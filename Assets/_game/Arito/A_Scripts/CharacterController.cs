using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;

namespace Mangos
{
    public class CharacterController : MonoBehaviour
    {
        public float movementSpeed;
        public float jumpForce;
        public float velSmoothSpeed;
        public float rotSmoothSpeed;
        public float airbornRotSpeed;
        public GameObject model;

        public GameObject TestShield;

        private int playerID = 0; // Set to 0 by default
        private Player player;

        private Rigidbody rig;
        private bool isAirborn = false;
        private bool canMove = true;
        private bool canJump = true;
        private bool isShielded = false;
        private float damage = 0;
        private GameObject heldItem;
        private bool hasItem;

        public int currentComboSatus = 0;
        public float comboCooldown = 0;

        public float attackCooldown = 0;

        // Input Mapping
        private bool jump;
        private bool shield;
        private float xDir;
        private float zDir;
        private bool lightAttack;
        private bool heavyAttack;

        // Animation Controls
        private Animator anim;

        private void OnCollisionStay(Collision _col)
        {
            bool foundFloor = false;
            for (int i = 0; i < _col.contacts.Length; i++)
            {
                if (!foundFloor)
                {
                    Vector3 normal = _col.contacts[i].normal.normalized;
                    Vector3 up = Vector3.up;
                    float comparison = Vector3.Dot(normal, up);
                    if (comparison > 0.7f && _col.gameObject.CompareTag("Map"))
                    {
                        isAirborn = false;
                        gameObject.GetComponent<CapsuleCollider>().material.staticFriction = 0.5f;
                        foundFloor = true;
                        canMove = true;
                    }
                    else if (comparison > 0.25f && comparison < 0.7f && _col.gameObject.CompareTag("Map"))
                    {
                        gameObject.GetComponent<CapsuleCollider>().material.staticFriction = 0.0f;
                        canMove = false;
                    }
                    else
                    {
                        gameObject.GetComponent<CapsuleCollider>().material.staticFriction = 0.0f;
                        canMove = true;
                    }
                }  
            }
        }

        private void OnCollisionExit(Collision _col)
        {
            gameObject.GetComponent<CapsuleCollider>().material.staticFriction = 0.0f;
            isAirborn = true;
        }

        void Start()
        {
            player = ReInput.players.GetPlayer(playerID);
            rig = gameObject.GetComponent<Rigidbody>();
            TestShield.SetActive(false);
            Instantiate(model, transform.position, transform.rotation, transform);
            foreach(Transform child in gameObject.transform)
            {
                if (child.gameObject.CompareTag("Model"))
                    anim = child.gameObject.GetComponent<Animator>();
            }
            Debug.Log("Animator: " + anim);
        }

        public void AssignID(int _id)
        {
            playerID = _id;
            player = ReInput.players.GetPlayer(playerID);
            Debug.Log("Player was assigned id: " + playerID);
        }

        void Update()
        {
            if (currentComboSatus != 0 && comboCooldown <= 0)
            {
                currentComboSatus = 0;
            } else if (currentComboSatus != 0)
            {
                comboCooldown -= Time.deltaTime;
            }

            GetInputs();
            ProcessInputs();
        }

        private void GetInputs()
        {
            xDir = player.GetAxis("Move_Horizontal");
            zDir = player.GetAxis("Move_Vertical");

            jump = player.GetButtonDown("Jump");
            shield = player.GetButton("Block");

            lightAttack = player.GetButtonDown("Low_Punch");
            heavyAttack = player.GetButtonDown("Heavy_Punch");
        }

        private void ProcessInputs()
        {
            if (jump)
                Jump();
            if (shield)
                Shield();
            else
                UnShield();

            if (attackCooldown <= 0)
            {
                if (lightAttack)
                {
                    if (isAirborn)
                    {
                        Attack(3);
                    } else
                    {
                        Attack(currentComboSatus);

                        currentComboSatus++;

                        if (currentComboSatus >= 3)
                        {
                            currentComboSatus = 0;
                            comboCooldown = 2.0f;
                        }
                        else
                            comboCooldown = 1.0f;
                    }
                    attackCooldown = 0.5f;
                }

                if (heavyAttack)
                {
                    Attack(4);
                    attackCooldown = 0.5f;
                }
            } else
            {
                attackCooldown -= Time.deltaTime;
            }

            Move(xDir, zDir);
        }

        public void Move(float _xDir, float _zDir)
        {
            if (canMove)
            {
                Vector3 finalVel = rig.velocity;

                finalVel.x = _xDir * Time.deltaTime * movementSpeed;
                finalVel.z = _zDir * Time.deltaTime * movementSpeed;

                if (finalVel != Vector3.zero)
                {
                    Vector3 lookAtDir;
                    lookAtDir.x = finalVel.x;
                    lookAtDir.y = 0;
                    lookAtDir.z = finalVel.z;

                    Vector3 currentLookDir;
                    currentLookDir.x = transform.forward.x;
                    currentLookDir.y = 0;
                    currentLookDir.z = transform.forward.z;

                    Vector3 smoothedRotation;
                    if (isAirborn)
                    {
                        smoothedRotation = Vector3.Lerp(currentLookDir, lookAtDir, rotSmoothSpeed * airbornRotSpeed);
                    }
                    else
                    {
                        smoothedRotation = Vector3.Lerp(currentLookDir, lookAtDir, rotSmoothSpeed);
                    } 

                    transform.rotation = Quaternion.LookRotation(smoothedRotation.normalized);
                }

                Vector3 smoothedVel = Vector3.Lerp(rig.velocity, finalVel, velSmoothSpeed);
                rig.velocity = smoothedVel;
                rig.angularVelocity = Vector3.zero;
            }

            // Animation Controller
            Vector3 animVel;
            animVel.x = rig.velocity.x;
            animVel.y = 0;
            animVel.z = rig.velocity.z;
            anim.SetFloat("MovementVelocity", animVel.magnitude.Remap(0, 10, 0, 1));
        }

        public void Jump()
        {
            if (canJump)
            {
                if (!isAirborn)
                {
                    rig.AddForce(Vector3.up * jumpForce * 1000, ForceMode.Impulse);
                    isAirborn = true;

                    // Animation Controls
                    anim.SetTrigger("Jump");
                }
            }
        }

        public void Shield()
        {
            if (!isAirborn)
            {
                rig.velocity = Vector3.Lerp(rig.velocity, Vector3.zero, 0.15f);
                rig.angularVelocity = Vector3.zero;
                canMove = false;
                canJump = false;
                isShielded = true;
                TestShield.SetActive(true);

                // Animation Controls
                anim.SetBool("Shield", true);
            }
        }

        public void UnShield()
        {
            if (!isAirborn)
            {
                canMove = true;
                canJump = true;
                isShielded = false;
                TestShield.SetActive(false);

                // Animation Controls
                anim.SetBool("Shield", false);
            }
        }

        public void ReceiveDamage(float _dmg)
        {
            if (!isShielded)
                damage += _dmg;
        }

        public void HealDamage(float _heal)
        {
            if (!isShielded)
               damage -= _heal;
        }

        public void PickupItem(GameObject _obj)
        {
            heldItem = _obj;
            hasItem = true;

            // Animation Controls
            anim.SetTrigger("Pickup");
        }
        
        public void ThrowItem()
        {
            if (hasItem)
            {
                hasItem = false;
            }

            // Animation Controls
            anim.SetTrigger("Throw");
        }

        public void Attack(float _index)
        {
            anim.SetFloat("AttackStatus", (float)_index);
            anim.SetTrigger("Attack");
        }

        public void Stun()
        {
            canMove = false;

            // Animation Controls
            anim.SetBool("Stun", true);
        }

        public void DeStun()
        {
            canMove = true;

            // Animation Controls
            anim.SetBool("Stun", false);
        }
    }

    public static class Extensions
    {
        public static float Remap(this float value, float inMin, float inMax, float outMin, float outMax)
        {
            return outMin + (value - inMin) * (outMax - outMin) / (inMax - inMin);
        }

        public static Vector3 Remap(this Vector3 value, float inMin, float inMax, float outMin, float outMax)
        {
            return new Vector3(value.x.Remap(inMin, inMax, outMin, outMax), value.y.Remap(inMin, inMax, outMin, outMax), value.z.Remap(inMin, inMax, outMin, outMax));
        }
    }
}
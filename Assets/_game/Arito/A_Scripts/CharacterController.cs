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

        // Input Mapping
        [Header("DEBBUGING MOVEMENT")]
        public bool jump;
        public bool shield;
        public float xDir;
        public float zDir;

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
        }

        public void AssignID(int _id)
        {
            playerID = _id;
            player = ReInput.players.GetPlayer(playerID);
            Debug.Log("Player was assigned id: " + playerID);
        }

        void Update()
        {
            GetInputs();
            ProcessInputs();
        }

        private void GetInputs()
        {
            xDir = player.GetAxis("Move_Horizontal");
            zDir = player.GetAxis("Move_Vertical");

            jump = player.GetButtonDown("Jump");
            shield = player.GetButton("Block");
        }

        private void ProcessInputs()
        {
            if (jump)
                Jump();
            if (shield)
                Shield();
            else
                UnShield();

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
        }

        public void Jump()
        {
            if (canJump)
            {
                if (!isAirborn)
                {
                    rig.AddForce(Vector3.up * jumpForce * 1000, ForceMode.Impulse);
                    isAirborn = true;
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

        /*public void Interact(GameObject _obj)
        {
            // ItemBehaviour
            // type.HEAVY / type.LIGHT

            _obj.GetComponent<ItemBehaviour>().type

            switch(_obj)
        }*/
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
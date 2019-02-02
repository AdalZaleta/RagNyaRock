using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class CharacterController : MonoBehaviour
    {
        public float movementSpeed;
        public float runningMultiplier;
        public float jumpForce;
        public float velSmoothSpeed;
        public float rotSmoothSpeed;
        public float airbornRotSpeed;
        public GameObject model;

        public GameObject TestShield;

        private Rigidbody rig;
        private bool isAirborn = false;
        private float isRunning = 1;
        private float xDir, zDir;
        private bool canMove = true;
        private bool canJump = true;
        private bool isShielded = false;
        private float damage = 0;

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
            rig = gameObject.GetComponent<Rigidbody>();
            TestShield.SetActive(false);
            Instantiate(model, transform.position, transform.rotation, transform);
        }

        void Update()
        {
            // Temp Method Testing 
            if (Input.GetKeyDown(KeyCode.LeftShift))
                Run(true);
            else if (Input.GetKeyUp(KeyCode.LeftShift))
                Run(false);

            zDir = Input.GetAxis("Vertical");
            xDir = Input.GetAxis("Horizontal");

            if (Input.GetButtonDown("Fire1"))
                Jump();

            if (Input.GetAxis("Joy1Axis9") > 0.5 || Input.GetAxis("Joy1Axis10") > 0.5)
            {
                Shield();
            } else
            {
                UnShield();
            }

            Move(xDir, zDir);
        }

        public void Run(bool _run)
        {
            if (_run)
                isRunning = 2;
            else
                isRunning = 1;
        }

        public void Move(float _xDir, float _zDir)
        {
            if (canMove)
            {
                Vector3 finalVel = rig.velocity;

                finalVel.x = _xDir * Time.deltaTime * movementSpeed * isRunning;
                finalVel.z = _zDir * Time.deltaTime * movementSpeed * isRunning;

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
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MANGOS
{
    public class CharacterController : MonoBehaviour
    {
        public float movementSpeed;
        public float runningMultiplier;
        public float jumpForce;

        public Rigidbody rig;
        private bool isAirborn = false;
        private float isRunning = 1;
        private float xDir, zDir;
        private bool canMove = true;

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

            Move(xDir, zDir);

            if (Input.GetButtonDown("Fire1"))
                Jump();
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

                rig.velocity = finalVel;
            }
        }

        public void Jump()
        {
            if (!isAirborn)
            {
                rig.AddForce(Vector3.up * jumpForce * 1000, ForceMode.Impulse);
                isAirborn = true;
            }
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
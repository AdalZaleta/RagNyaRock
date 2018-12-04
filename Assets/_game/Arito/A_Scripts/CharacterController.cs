using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace MANGOS
{
    public class CharacterController : MonoBehaviour
    {
        public float movementSpeed;
        public float runningMultiplier;
        public float maxVelocity;
        public float jumpForce;
        public LayerMask layerMask;

        public Rigidbody rig;
        private bool isAirborn = false;
        private float isRunning = 1;
        private float xDir, zDir;

        private void OnTriggerEnter(Collider _col)
        {
            if (isAirborn)
                if (_col.gameObject.CompareTag("Map"))
                    isAirborn = false;
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

            /*if (Input.GetKey(KeyCode.W))
                zDir = 1;
            else if (Input.GetKey(KeyCode.S))
                zDir = -1;
            else
                zDir = 0;*/

            zDir = Input.GetAxis("Vertical");
            xDir = Input.GetAxis("Horizontal");

            /*if (Input.GetKey(KeyCode.A))
                xDir = -1;
            else if (Input.GetKey(KeyCode.D))
                xDir = 1;
            else
                xDir = 0;*/

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
            Vector3 finalVel = rig.velocity;

            finalVel.x = _xDir * Time.deltaTime * movementSpeed * isRunning;
            finalVel.z = _zDir * Time.deltaTime * movementSpeed * isRunning;

            if (finalVel.x > maxVelocity)
                finalVel.x = maxVelocity;
            if (finalVel.z > maxVelocity)
                finalVel.z = maxVelocity;

            rig.velocity = finalVel;
        }

        public void Jump()
        {
            if (!isAirborn)
            {
                rig.AddForce(Vector3.up * jumpForce * 1000, ForceMode.Impulse);
                isAirborn = true;
            }
        }
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Mangos
{
    public class Messenger : MonoBehaviour
    {
        public HitData hData;
        Rigidbody rigi;

        public float force;
        public float scalingForce;

        private void Start()
        {
            rigi = GetComponent<Rigidbody>();
            hData.sender = gameObject;
            hData.baseForce = force;
            hData.scalingForce = scalingForce;
            hData.dir = Vector3.right + Vector3.up;
        }

        void Update()
        {
            if (Input.GetKeyDown(KeyCode.H))
            {
                //Activate collider and ssta
            }
        }

        private void OnTriggerEnter(Collider other)
        {
            hData.contactPoint = other.ClosestPoint(transform.position);
            other.SendMessage("GetHit", hData, SendMessageOptions.DontRequireReceiver);
        }
    }
}
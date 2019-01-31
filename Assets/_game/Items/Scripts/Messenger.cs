using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Mangos
{
    public class Messenger : MonoBehaviour
    {
        public HitData hData;
        public GameObject gato;
        Rigidbody rigi;

        public float force;

        private void Start()
        {
            rigi = GetComponent<Rigidbody>();
            hData.sender = gameObject;
            hData.force = force;
            hData.dir = Vector3.right;
            hData.contactPoint = gato.transform.position;
        }

        void Update()
        {
            if(Input.GetKeyDown(KeyCode.Space))
            {
                gato.SendMessage("HitReceiver", hData, SendMessageOptions.DontRequireReceiver);
            }
        }
    }
}
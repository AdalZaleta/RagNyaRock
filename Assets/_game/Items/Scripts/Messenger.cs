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

        private void Start()
        {
            rigi = GetComponent<Rigidbody>();
            hData.sender = gameObject;
            hData.force = 600f;
            hData.dir = rigi.velocity;
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
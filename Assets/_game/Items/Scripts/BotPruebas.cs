using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace mangos
{
    public class BotPruebas : MonoBehaviour
    {
        public float speed;

        void Start()
        {

        }

        void Update()
        {
            transform.Translate(Vector3.right * speed);
        }
    }
}
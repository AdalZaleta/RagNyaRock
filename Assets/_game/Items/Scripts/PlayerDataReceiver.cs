using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace mangos
{
    public class PlayerDataReceiver : MonoBehaviour
    {
        [Tooltip("El daño que le hará al PROP que le envió el golpe")]
        public int dañoDevuelta;
        [Tooltip("Porcentaje de daño que tiene actualmente")]
        public int percentage;


        private Rigidbody m_rigi;

        void Start()
        {
            m_rigi = GetComponent<Rigidbody>();
        }


        void Update()
        {

        }

        void HitReceiver(ItemBehaviour data)
        {
            percentage = percentage + data.addingPercentage;
            
            data.GetHit(dañoDevuelta);
        }
    }
}
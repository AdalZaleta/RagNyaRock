using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace mangos
{
    [RequireComponent(typeof(Rigidbody))]
    public class PlayerDataReceiver : MonoBehaviour
    {
        [Tooltip("El daño que le hará al PROP que le envió el golpe")]
        public int dañoDevuelta;
        [Tooltip("Porcentaje de daño que tiene actualmente")]
        public int percentage;

        public bool Ragdoll;


        private Rigidbody m_rigi;
        private Collider m_col;
        private Rigidbody[] m_righijos;
        private Collider[] m_colhijos;
        

        void Start()    
        {
            m_rigi = GetComponent<Rigidbody>();
            m_col = GetComponent<Collider>();
            Ragdoll = false;
            m_righijos = GetComponentsInChildren<Rigidbody>();
            m_colhijos = GetComponentsInChildren<Collider>();
            for(int i = 0; i < m_righijos.Length; i++)
            {
                m_righijos[i].isKinematic = true;
            }
            for(int i = 0; i < m_colhijos.Length; i++)
            {
                m_colhijos[i].enabled = false;
            }
            m_rigi.isKinematic = false;
            m_col.enabled = true;
        }


        void Update()
        {
            
        }

        void HitReceiver(ItemBehaviour data)
        {
            percentage = percentage + data.addingPercentage;
            if(percentage >= 120)
            {
                ActivateRagdoll();
            }
            data.GetHit(dañoDevuelta);
        }

        public void ActivateRagdoll()
        {

        }
    }
}
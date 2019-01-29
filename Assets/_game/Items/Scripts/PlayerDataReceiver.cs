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

        void HitReceiver(ItemBehaviour _data)
        {
            percentage = percentage + _data.addingPercentage;
            Rigidbody itemRigi = _data.GetComponent<Rigidbody>();
            if (percentage >= 120)
            {
                ActivateRagdoll();
                GetKnockbacked(itemRigi.velocity, _data.transform.position, _data.force);
            } else
            {
                if(itemRigi.velocity.magnitude >= 30)
                {
                    Debug.Log("Mini KnockBack");
                    GetKnockbacked(itemRigi.velocity, _data.transform.position, _data.miniforce);
                }
            }
            _data.GetHit(dañoDevuelta);
        }

        public void ActivateRagdoll()
        {
            StartCoroutine("RagdollAct");
        }

        public void GetKnockbacked(Vector3 _dir,Vector3 _pos, float _force)
        {
            _dir.Normalize();
            m_rigi.AddForceAtPosition(PunchedForce(_force) * _dir, _pos, ForceMode.Impulse);
        }

        public float PunchedForce(float _force)
        {

            return _force;
        }

        IEnumerator RagdollAct()
        {
            yield return new WaitForSeconds(0.1f);
            for (int i = 0; i < m_righijos.Length; i++)
            {
                m_righijos[i].isKinematic = false;
            }
            for (int i = 0; i < m_colhijos.Length; i++)
            {
                m_colhijos[i].enabled = true;
            }
            m_rigi.isKinematic = true;
            m_col.enabled = false;
        }
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Mangos
{
    [RequireComponent(typeof(Rigidbody))]
    [RequireComponent(typeof(CharacterController))]
    public class PlayerDataReceiver : MonoBehaviour
    {
        [Tooltip("El daño que le hará al PROP que le envió el golpe")]
        public int dañoDevuelta;
        [Tooltip("Porcentaje de daño que tiene actualmente")]
        public float percentage;

        public bool Ragdoll;
        public CharacterController controller;

        private Rigidbody m_rigi;
        private Collider m_col;
        private Rigidbody[] m_righijos;
        private Collider[] m_colhijos;
        [HideInInspector]
        public Animator anim;//Anim que se asigna al spawnear

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

            m_rigi.AddForce(Vector3.up * 100);
        }

        void ReceiveDamage(HitData _data)
        {
            if (percentage >= 120f)
            {
                ActivateRagdoll();
                GetKnockbacked(_data.dir, _data.contactPoint, ForceOfHit(_data.baseForce, _data.scalingForce));
                m_rigi.isKinematic = true;
                m_col.enabled = false;
            } else
            {
                GetKnockbacked(_data.dir, _data.contactPoint, ForceOfHit(_data.baseForce, _data.scalingForce));
            }
            percentage = percentage + _data.damage;

            _data.sender.SendMessage("GetHit", dañoDevuelta, SendMessageOptions.DontRequireReceiver);
        }

        public void ActivateRagdoll()
        {
            Debug.Log("Activating ragdoll");
            for (int i = 0; i < m_righijos.Length; i++)
            {
                m_righijos[i].isKinematic = false;
            }
            for (int i = 0; i < m_colhijos.Length; i++)
            {
                m_colhijos[i].enabled = true;
            }
            Ragdoll = true;
            anim.enabled = false;
            GetComponent<CharacterController>().SetRagdoll(true);
            Invoke("DeactivateRagdoll", 2.0f);
        }

        public void DeactivateRagdoll()
        {
            Debug.Log("Deactivating ragdoll");
            Vector3 offset = controller.GetModelOffset();
            Debug.Log("Offset was " + offset);
            for (int i = 0; i < m_righijos.Length; i++)
            {
                m_righijos[i].isKinematic = true;
            }
            for (int i = 0; i < m_colhijos.Length; i++)
            {
                m_colhijos[i].enabled = false;
            }
            Ragdoll = false;
            anim.enabled = true;
            m_rigi.isKinematic = false;
            m_col.enabled = true;
            transform.Translate(offset);
            controller.SetRagdoll(false);
        }

        public float ForceOfHit(float _baseForce, float _scalingForce)
        {
            return _baseForce + (percentage/2.0f) * _scalingForce;
        }

        public void GetKnockbacked(Vector3 _dir,Vector3 _pos, float _force)
        {
            m_rigi.velocity = Vector3.zero;
            _dir.Normalize();
            if(Ragdoll == false)
                m_rigi.AddForceAtPosition(_force * _dir, _pos, ForceMode.Impulse);
            else
            {
                m_rigi.AddForceAtPosition(_force * _dir, _pos, ForceMode.Impulse);
                for (int i = 0; i < m_righijos.Length; i++)
                    m_righijos[i].AddForceAtPosition(_force * _dir, _pos, ForceMode.Impulse);
            }
        }
    }
}

﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Mangos
{
    [RequireComponent(typeof(Rigidbody))]
    public class PlayerDataReceiver : MonoBehaviour
    {
        [Tooltip("El daño que le hará al PROP que le envió el golpe")]
        public int dañoDevuelta;
        [Tooltip("Porcentaje de daño que tiene actualmente")]
        public float percentage;

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

            m_rigi.AddForce(Vector3.up * 100);
        }


        void Update()
        {
            
        }

        void HitReceiver(HitData _data)
        {
            Debug.Log("Recived hit");
            if (percentage >= 120)
            {
                Debug.Log("Percentage is high, ragdolling");
                ActivateRagdoll();
                GetKnockbacked(_data.dir, _data.contactPoint, ForceReturnMax(_data.force));
                m_rigi.isKinematic = true;
                m_col.enabled = false;
            } else
            {
                Debug.Log("Percentage not enough, just recieving hit");
                GetKnockbacked(_data.dir, _data.contactPoint, ForceReturnMin(_data.force));
            }
            percentage = percentage + _data.force;
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
        }

        public float ForceReturnMax(float _force)
        {
            return _force;
        }

        public float ForceReturnMin(float _force)
        {
            return _force / 2;
        }

        public void GetKnockbacked(Vector3 _dir,Vector3 _pos, float _force)
        {
            Debug.Log("Should get knocked back with force: " + _force + " on dir " + _dir);
            _dir.Normalize();
            if(Ragdoll == false)
                m_rigi.AddForceAtPosition(_force * _dir, _pos, ForceMode.Impulse);
            else
            {
                for(int i = 0; i < m_righijos.Length; i++)
                    m_righijos[i].AddForceAtPosition(_force * _dir, _pos, ForceMode.Impulse);
            }
        }
    }
}
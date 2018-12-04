using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace mangos
{
    [RequireComponent(typeof(Rigidbody))]
    public class ItemBehaviour : MonoBehaviour
    {
        public string name;
        public int durability;
        public float stun;
        public float fire;
        Rigidbody rigi;
        public float forceVariance;

        private void Start()
        {
            rigi = GetComponent<Rigidbody>();
        }

        private void OnTriggerEnter(Collider _col)
        {
            _col.SendMessage("HitReceiver", this, SendMessageOptions.DontRequireReceiver);
        }

        public void GetHit(int damage)
        {
            durability = durability - damage;
            if (durability <= 0)
                destroyMyself();
        }

        public void destroyMyself()
        {
            GetComponent<BoxCollider>().enabled = false;
            Debug.Log("1    Tengo que destruirme, mi nombre es: " + name);

            BoxCollider[] hijos = GetComponentsInChildren<BoxCollider>();
            for (int i = 0; i < hijos.Length; i++)
            {
                hijos[i].enabled = true;
                hijos[i].gameObject.GetComponent<Transform>().SetParent(null, true);
            }

            Debug.Log("2    Tengo que destruirme, mi nombre es: " + name);
        }
    }
}
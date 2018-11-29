using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace mangos
{
    public class ItemBehaviour : MonoBehaviour
    {
        public string name;
        public int durability;
        public float stun;
        public float fire;
        Rigidbody rigi;
        public float forceVariance;
        public Box1 box1;

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

            BoxCollider[] hijos = GetComponentsInChildren<BoxCollider>();
            for (int i = 0; i < hijos.Length; i++)
            {
                hijos[i].enabled = true;
                hijos[i].gameObject.AddComponent<Rigidbody>();
                hijos[i].gameObject.GetComponent<Transform>().SetParent(null, true);
                hijos[i].gameObject.AddComponent<Box1>();
            }

            Destroy(gameObject);

            Debug.Log("Tengo que destruirme, mi nombre es: " + name);
        }
    }
}
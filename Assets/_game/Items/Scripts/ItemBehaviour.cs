using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    [RequireComponent(typeof(Rigidbody))]
    public class ItemBehaviour : MonoBehaviour
    {
        public int durability;
        public int addingPercentage;
        public HitData hData;
        public float force;
        public float scalingForce;
        public bool throwed;
        Rigidbody rigi;

        private void Start()
        {
            rigi = GetComponent<Rigidbody>();
            hData.sender = gameObject;
            hData.baseForce = force;
            hData.scalingForce = scalingForce;
            hData.dir = Vector3.right + Vector3.up;
            hData.damage = addingPercentage;
            throwed = false;
        }

        private void OnTriggerEnter(Collider _col)
        {
            if(throwed == true)
            {
                hData.contactPoint = transform.position;
                _col.SendMessage("GetHit", hData, SendMessageOptions.DontRequireReceiver);
            }
        }

        private void OnCollisionEnter(Collision _col)
        {
            if(_col.gameObject.CompareTag("Floor"))
            {
                throwed = false;
            }
        }

        public void GetHit(int damage)
        {
            if(throwed == true)
            {
                durability = durability - damage;
                if (durability <= 0)
                    DestroyMyself();
            }
        }

        public void DestroyMyself()
        {
            GetComponent<BoxCollider>().enabled = false;

            BoxCollider[] hijos = GetComponentsInChildren<BoxCollider>();
            for (int i = 0; i < hijos.Length; i++)
            {
                hijos[i].enabled = true;
                hijos[i].gameObject.AddComponent<Rigidbody>();
                hijos[i].gameObject.GetComponent<Transform>().SetParent(null, true);
            }
        }
    }
}
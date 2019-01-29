using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public enum TYPE
    {
        HEAVY,
        LIGHT
    }

    [RequireComponent(typeof(Rigidbody))]
    public class ItemBehaviour : MonoBehaviour
    {
        public string name;
        public TYPE type;
        public int durability;
        public int addingPercentage;
        public int force;       //Variable en negativos, Hace el knockback final.
        public int miniforce; //Esta variable es con el knockback que no saca volando (Usar negativos)
        Rigidbody rigi;

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
            }
        }
    }
}
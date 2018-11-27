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
            Debug.Log("Tengo que destruirme, mi nombre es: " + name);
        }
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    [RequireComponent(typeof(AudioSource))]
    public class AudioDad : MonoBehaviour
    {
        public void Despawn(float delay)
        {
            Invoke("SelfDespawn", delay);
        }

        public void Despawn()
        {
            SelfDespawn();
        }

        void SelfDespawn()
        {
            PoolManager.Despawn(gameObject);
        }

        void OnDespawn()
        {
            GetComponent<AudioSource>().Stop();
        }
    }
}
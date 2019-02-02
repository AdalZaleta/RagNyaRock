using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    [RequireComponent(typeof(BoxCollider))]
    [RequireComponent(typeof(Rigidbody))]
    [RequireComponent(typeof(MeshRenderer))]
    [ExecuteInEditMode]
    public class Hitbox : MonoBehaviour
    {
        public Transform director;
        public Vector3 dir;
        public float baseForce;
        public float scaleForce;
        public float damage;

        public bool DebugMode;

        private HitData hitData;
        private BoxCollider boxCollider;
        private Rigidbody rigi;
        private MeshRenderer render;

        void Start()
        {
            hitData.sender = gameObject;
            hitData.damage = damage;
            hitData.baseForce = baseForce;
            hitData.scalingForce = scaleForce;

            boxCollider = GetComponent<BoxCollider>();
            boxCollider.isTrigger = true;

            rigi = GetComponent<Rigidbody>();
            rigi.useGravity = false;

            render = GetComponent<MeshRenderer>();
            render.enabled = DebugMode;
        }

        private void Update()
        {
            if (DebugMode)
            {
                Debug.DrawLine(transform.position, transform.position + director.forward.normalized * 3);
            }
        }

        private void UpdateHitData()
        {
            hitData.dir = director.forward;
        }

        private void OnTriggerEnter(Collider _col)
        {
            Debug.Log("Entered trigger");
            UpdateHitData();
            _col.SendMessage("GetHit", hitData, SendMessageOptions.DontRequireReceiver);
        }

    }
}
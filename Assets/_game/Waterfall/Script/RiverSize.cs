using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    [RequireComponent(typeof(Flood))]
    [RequireComponent(typeof(MeshRenderer))]
    [RequireComponent(typeof(Animator))]
    public class RiverSize : MonoBehaviour
    {
        Flood flood;
        MeshRenderer mesh;
        Animator anim;

        public float offset;

        // Use this for initialization
        void Start()
        {
            flood = GetComponent<Flood>();
            mesh = GetComponent<MeshRenderer>();
            anim = GetComponent<Animator>();
            FloodDown();
        }

        void Update()
        {
            mesh.material.SetFloat("_OffsetMag", offset);
        }

        public void FloodUp()
        {
            anim.SetBool("Flood", true);
            Invoke("FloodDown", 3f);
        }

        public void FloodDown()
        {
            anim.SetBool("Flood", false);
            Invoke("FloodUp", 3f);
        }
    }
}
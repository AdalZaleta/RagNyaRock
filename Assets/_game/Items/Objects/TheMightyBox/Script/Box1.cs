using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos{
	public class Box1 : MonoBehaviour {
	
		Rigidbody rigi;
		public float breakingPoint;
		public float forceVariance;
        public Vector3 hitPos;
        public Vector3 playerPos;
        public float power;

		void Start () {
			rigi = GetComponent<Rigidbody>();
		}
	}
}
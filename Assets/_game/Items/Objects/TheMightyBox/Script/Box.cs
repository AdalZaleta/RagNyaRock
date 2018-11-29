using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos{
	public class Box : MonoBehaviour {
	
		Rigidbody rigi;
		public float breakingPoint;
		public float forceVariance; 
		bool alreadyPrayed = false;

		void Start () {
			rigi = GetComponent<Rigidbody>();
		}
		
		public void GetHit(){
				//rigi.AddForce((hitData.hitPos - hitData.shooterPos).normalized * hitData.power);
		}
		
		void OnCollisionEnter(Collision _col)
		{
            Debug.Log(_col.relativeVelocity.magnitude);
            if (_col.relativeVelocity.magnitude > breakingPoint)
			{
				Break();
			}
		}
		
		public void Break(){
       
            GetComponent<BoxCollider>().enabled = false;
			
			BoxCollider[] hijos = GetComponentsInChildren<BoxCollider>();
			for(int i = 0; i < hijos.Length; i++)
			{
				hijos[i].enabled = true;
				hijos[i].gameObject.AddComponent<Rigidbody>();
				hijos[i].gameObject.GetComponent<Transform>().SetParent(null, true);
                hijos[i].gameObject.AddComponent<Box1>();
			}

			Destroy(gameObject);
		}
	}
}
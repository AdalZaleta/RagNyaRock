using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RaycastParticle : MonoBehaviour {

	public ParticleSystem particle;

	void Start(){
		particle.Play();
	}

	void Update () {
		RaycastHit hit;
		if(Physics.Raycast(transform.position, Vector3.down, out hit, Mathf.Infinity)){
			Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward) * hit.distance, Color.yellow);
			Debug.Log("Did Hit");
			particle.transform.position = hit.point;
		}
		else{
			if(particle.isEmitting)
				particle.Stop();
		}
		
	}	
}

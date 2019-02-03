using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PawScript : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnCollisionStay(Collision collision)
    {
        collision.rigidbody.velocity = collision.transform.forward * gameObject.GetComponent<Rigidbody>().velocity.magnitude;
    }

    private void OnTriggerStay(Collider other)
    {
        other.GetComponent<Rigidbody>().velocity = other.transform.forward * gameObject.GetComponent<Rigidbody>().velocity.magnitude;
    }
}

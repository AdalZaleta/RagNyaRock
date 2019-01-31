using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class deleteme : MonoBehaviour {

    Rigidbody rigi;

    public float force;

	// Use this for initialization
	void Start () {
        rigi = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(KeyCode.S))
        {
            rigi.AddForce(Vector3.up * force, ForceMode.Impulse);
        }
	}
}

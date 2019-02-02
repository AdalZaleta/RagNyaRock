using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Freez : MonoBehaviour {

    public bool vulnerable = true;
    public float invulnerableTime;

    Rigidbody rigi;

    void Start()
    {
        rigi = GetComponent<Rigidbody>();
    }

	void Update () {
        if (Input.GetKeyDown(KeyCode.S))
        {
            Debug.Log("Debug input, pressed S");
            StartCoroutine("damageStop");
        }
	}

    IEnumerator damageStop()
    {
        vulnerable = false;
        Vector3 angVel = rigi.angularVelocity;
        Vector3 vel = rigi.velocity;
        rigi.angularVelocity = Vector3.zero;
        rigi.velocity = Vector3.zero;
        rigi.useGravity = false;
        rigi.gameObject.GetComponentInChildren<MeshRenderer>().material.SetColor("_EmissionColor", Color.white);
        float startTime = Time.time;

        while (Time.time < startTime + invulnerableTime)
        {
            rigi.gameObject.GetComponentInChildren<MeshRenderer>().material.SetColor("_EmissionColor", Color.Lerp(Color.white, Color.black, Mathf.InverseLerp(startTime, startTime + invulnerableTime, Time.time)));
            yield return null;
        }

        rigi.angularVelocity = angVel;
        rigi.velocity = vel;
        rigi.useGravity = true;
        rigi.gameObject.GetComponentInChildren<MeshRenderer>().material.SetColor("_EmissionColor", Color.black);
        vulnerable = true;
    }
}

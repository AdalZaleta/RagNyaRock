using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ULT_Meteor : MonoBehaviour {

    public GameObject magicCircle;
    public GameObject magicMeteor;

    public float rotSpeed;
    public float pawSpeed;

    private float rotTimer = 10;

    private void Start()
    {
        //Invoke("LaunchMeteor", 5);
    }

    // Update is called once per frame
    void Update () {
        magicCircle.transform.Rotate(Vector3.forward * rotSpeed);
	}

    private void LaunchPaw()
    {
        GameObject go = Instantiate(magicMeteor, transform.position, transform.rotation);
        go.GetComponent<Rigidbody>().velocity = go.transform.forward * pawSpeed;
    }
}

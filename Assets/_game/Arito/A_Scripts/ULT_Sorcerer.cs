using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ULT_Sorcerer : MonoBehaviour {

    public GameObject magicCircle;
    public GameObject magicPaw;

    public float rotSpeed;
    public float pawSpeed;

    private float rotTimer = 10;

    private void Start()
    {
        Invoke("LaunchPaw", 5);
    }

    // Update is called once per frame
    void Update () {
        magicCircle.transform.Rotate(Vector3.down * rotSpeed);
	}

    private void LaunchPaw()
    {
        GameObject go = Instantiate(magicPaw, transform.position, transform.rotation);
        go.GetComponent<Rigidbody>().velocity = go.transform.forward * pawSpeed;
    }
}

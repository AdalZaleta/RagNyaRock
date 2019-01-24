using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BallScript : MonoBehaviour {

    public float acceleration;
    public float maxSpeed;
    public GameObject target;

    private Rigidbody rigi;

    private void Start()
    {
        target = GameObject.Find("Cabeza");
        rigi = GetComponent<Rigidbody>();
    }

    void Update ()
    {
        float step = acceleration * Time.deltaTime;
        if(step > maxSpeed)
        {
            step = maxSpeed;
        }

        if(Vector3.Distance(target.transform.position, gameObject.transform.position) >= 25)
        {
            rigi.velocity = Vector3.zero;
        }
        
        transform.position = Vector3.MoveTowards(transform.position, target.transform.position, step);
    }

    private void OnCollisionEnter(Collision collision)
    {
        float forceBackwards = 15;
        if(collision.gameObject.CompareTag("Player"))
        {
            Vector3 dir = collision.contacts[0].point - transform.position;
            dir = -dir.normalized;
            rigi.AddForce(dir * forceBackwards, ForceMode.Impulse);
        }
    }
}

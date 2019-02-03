using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MageULTController : MonoBehaviour {

    public GameObject sorcery;
    public GameObject meteor;
    public float movementSpeed;

    private float xDir;
    private float zDir;

	void Update () {
        GetInputs();
        ProcessInputs();
	}

    void GetInputs()
    {
        if (Input.GetButtonDown("Fire2"))
        {
            xDir = Input.GetAxis("Horizontal");
            zDir = Input.GetAxis("Vertical");
        }
    }

    void ProcessInputs()
    {
        if (Input.GetButtonDown("Fire2"))
        {
            MoveSorcery(xDir, zDir);
        } else if (Input.GetButtonUp("Fire2"))
        {
            GameObject go = Instantiate(meteor, new Vector3(sorcery.transform.position.x, sorcery.transform.position.y + 10, sorcery.transform.position.z), transform.rotation);
            go.GetComponent<Rigidbody>().velocity = go.transform.up * -1 * 10;
        }
    }

    void MoveSorcery(float _xDir, float _zDir)
    {
        Vector3 finalVel = sorcery.GetComponent<Rigidbody>().velocity;

        finalVel.x = _xDir * movementSpeed;
        finalVel.z = _zDir * movementSpeed;
    }
}

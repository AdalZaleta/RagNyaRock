using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

    public Transform target;
    public float followSpeed;

    [Header("Follow Constraits")]
    public bool X;
    public bool Y;
    public bool Z;
	
	// Update is called once per frame
	void Update () {
        Vector3 finalPos = new Vector3(
            X? target.position.x : transform.position.x,
            Y? target.position.y : transform.position.y,
            Z? target.position.z : transform.position.z
            );

        Vector3 smoothedPos = Vector3.Lerp(transform.position, finalPos, followSpeed * Time.deltaTime);
        transform.position = smoothedPos;
	}
}

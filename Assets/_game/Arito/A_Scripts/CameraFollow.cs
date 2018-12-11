using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraFollow : MonoBehaviour {

    public Transform target;
    public float followSpeed;

    [Header("Follow Axis")]
    public bool X;
    public bool Y;
    public bool Z;
	
	void Update () {
        Follow(target);
	}

    public void SwitchTarget(Transform _target)
    {
        target = _target;
    }

    private void Follow(Transform _target)
    {
        Vector3 finalPos = new Vector3(
            X ? _target.position.x : transform.position.x,
            Y ? _target.position.y : transform.position.y,
            Z ? _target.position.z : transform.position.z
            );

        Vector3 smoothedPos = Vector3.Lerp(transform.position, finalPos, followSpeed * Time.deltaTime);
        transform.position = smoothedPos;
    }
}

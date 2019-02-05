using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Expand_Aro : MonoBehaviour {

	private float scaleFactor = 0.1f;
	public float speedScale = 1;
	
	void Update () {
		transform.localScale = new Vector3(scaleFactor, 1.0f, scaleFactor);
		scaleFactor += Time.deltaTime * speedScale;
	}

	void OnEnable() {
		scaleFactor = 0.1f;
		transform.localScale = new Vector3(scaleFactor, 1.0f, scaleFactor);
	}

	void OnDisable() {
		scaleFactor = 0.1f;
		transform.localScale = new Vector3(scaleFactor, 1.0f, scaleFactor);
	}
}

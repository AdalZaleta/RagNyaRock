using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Expand_Aro : MonoBehaviour {

	private float scaleFactor = 1;
	public float speedScale = 1;
	
	void Update () {
		transform.localScale = new Vector3(scaleFactor, 1.0f, scaleFactor);
		scaleFactor += Time.deltaTime * speedScale;
		if(scaleFactor > 20.0f)
		{
			gameObject.SetActive(false);
		}
		if(scaleFactor <= 1.1f)
		{
			gameObject.SetActive(true);
		}
	}

	void OnEnable() {
		scaleFactor = 1;
		foreach (GameObject child in transform)
			child.gameObject.SetActive(true);
	}

	void OnDisable() {
		scaleFactor = 1;	
	}
}

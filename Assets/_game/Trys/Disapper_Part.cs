using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Disapper_Part : MonoBehaviour {

	void OnTriggerEnter(Collider other) {
		if(other.CompareTag("Player"))
		{
			other.SendMessage("teTocaronWe", SendMessageOptions.DontRequireReceiver);
			gameObject.SetActive(false);
		}
	}
}

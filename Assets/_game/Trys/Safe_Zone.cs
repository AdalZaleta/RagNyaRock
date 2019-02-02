using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Safe_Zone : MonoBehaviour {

	public Transform[] spanws;

	void OnTriggerExit(Collider other)
	{
		other.SendMessage("ExitSafeZone",SendMessageOptions.DontRequireReceiver);
		other.transform.localPosition = spanws[Random.Range(0, spanws.Length)].localPosition;
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Safe_Zone : MonoBehaviour {

	[ContextMenu("Se encarga de mandar un mensaje a las cosas que se salen")]
	void OnTriggerExit(Collider other)
	{
		if(other.CompareTag("Player"))
		{
			other.SendMessage("ExitSafeZone",SendMessageOptions.DontRequireReceiver);
		}
	}
}

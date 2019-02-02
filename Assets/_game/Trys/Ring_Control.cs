using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ring_Control : MonoBehaviour {

	public GameObject control;


	public void Activate() 
	{
		control.gameObject.SetActive(true);
	}

	public void Desactivate()
	{
		control.gameObject.SetActive(false);
	}
}

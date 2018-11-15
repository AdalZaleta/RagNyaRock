using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Mangos
{
	public class Manager_UI : MonoBehaviour {

		void Awake()
		{
			Manager_Static.uiManager = this;
		}
	}
}

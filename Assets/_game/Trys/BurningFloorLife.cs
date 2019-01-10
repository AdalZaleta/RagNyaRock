using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
	public class BurningFloorLife : MonoBehaviour {

		public float timeToDisapeer;

		void OnEnable() {
			timeToDisapeer = Random.Range(2.0f, 4.0f);
		}
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
	public class Notas_Script : MonoBehaviour {

		public Nota actual;


		private void OnTriggerEnter(Collider other) {
			if(actual == Nota.CORCHEA)
			{
				other.SendMessage("GetHit");
			}
		}
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos {
    public class Flood : MonoBehaviour {

        public Vector3 dir;

        void OnTriggerEenter(Collider _col)
        {
            _col.SendMessage("SetRestingVelocity", dir, SendMessageOptions.DontRequireReceiver);
        }

        void OnTriggerExit(Collider _col)
        {
            _col.SendMessage("SetRestingVelocity", Vector3.zero, SendMessageOptions.DontRequireReceiver);
        }
    }
}
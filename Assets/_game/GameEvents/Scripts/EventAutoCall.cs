using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos {
    public class EventAutoCall : MonoBehaviour {

        public GameEvent[] OnStartEvents;

        // Use this for initialization
        void Start() {
            for(int i = 0; i < OnStartEvents.Length; i++)
            {
                OnStartEvents[i].Raise();
            }
        }

        // Update is called once per frame
        void Update() {

        }
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace mangos
{
    public class dataReceiver : MonoBehaviour
    {
        public int dañoDevuelta;
        void HitReceiver(ItemBehaviour data)
        {
            if (data.name != null)
                Debug.Log("Me pegó " + data.name);
            data.GetHit(dañoDevuelta);
        }
    }
}
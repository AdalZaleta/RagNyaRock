using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class CascadaAudios : MonoBehaviour
    {
        void Start()
        {
            Manager_Static.audioManager.PlaySoundGlobal(Sounds.CASCADA_ESCENARIO);
            Manager_Static.audioManager.PlaySoundGlobal(Sounds.CASCADA);
        }
    }
}
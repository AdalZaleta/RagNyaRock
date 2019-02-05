using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class MusicSceneSonidos : MonoBehaviour
    {
        void Start()
        {
            Manager_Static.audioManager.PlaySoundGlobal(Sounds.NOTAS_ESCENARIO);
        }
    }
}
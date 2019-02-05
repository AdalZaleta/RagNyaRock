using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class EspacioSonidos : MonoBehaviour
    {
        void Start()
        {
            Manager_Static.audioManager.PlaySoundGlobal(Sounds.ESPACIO_SONIDOS_Y_MUSICA);
        }
    }
}
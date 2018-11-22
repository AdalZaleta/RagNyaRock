using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    [CreateAssetMenu()]
    public class SkinInfo : ScriptableObject
    {
        public string namae;
        public Sprite splash;
        public GameObject model;
    }
}
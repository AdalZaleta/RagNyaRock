﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    [CreateAssetMenu()]
    public class CharacterSet : ScriptableObject {
        public string namae;
        //public Sprite icon;
        public SkinInfo[] skins;
        public GameObject ult_controller;

        public void BuildCharacter(int _skin)
        {
            //get icon, model and everything and build character for game and sprites for selection screen
        }
    }
}
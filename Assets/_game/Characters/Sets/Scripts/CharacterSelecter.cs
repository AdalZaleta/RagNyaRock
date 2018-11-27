using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace Mangos {
    public class CharacterSelecter : MonoBehaviour {

        public int playerId;
        public Image splash;
        public Image darkOverlay;
        public Text namae;
        public Text ready;

        private bool isSelected;
        private CharacterSet[] sets;
        private int currentChar = 0;
        private int[] currentSkin;

        [Header("Debug")]
        public bool isConnected;
        public KeyCode toggleConnect;
        public KeyCode select;
        public KeyCode back;
        public KeyCode right;
        public KeyCode left;
        public KeyCode skinR;
        public KeyCode skinL;

        // Use this for initialization
        void Start() {
            sets = Manager_Static.uiManager.characterSets;
            currentChar = playerId % sets.Length;
            currentSkin = new int[sets.Length];
            ready.enabled = false;
            if (isConnected)
                OnJoin();
            else
                OnLeave();
        }

        // Update is called once per frame
        void Update() {
            if (Input.GetKeyDown(toggleConnect))
            {
                if (!isConnected)
                    OnJoin();
                else
                    OnLeave();
            }
            if (Input.GetKeyDown(select))
            {
                SelectCharacter();
            }
            if (Input.GetKeyDown(back))
            {
                if (isSelected)
                {
                    DeselectCharacter();
                }
                else
                {
                    Back();
                }
            }
            if (Input.GetKeyDown(right))
            {
                ChangeRight();
            }
            if (Input.GetKeyDown(left))
            {
                ChangeLeft();
            }
            if (Input.GetKeyDown(skinR))
            {
                ChangeSkinRight();
            }
            if (Input.GetKeyDown(skinL))
            {
                ChangeSkinLeft();
            }
        }

        public void UpdateDisplay()
        {
            if (sets.Length != 0)
            {
                namae.text = sets[currentChar].namae;
                if (sets[currentChar].skins.Length != 0)
                {
                    splash.sprite = sets[currentChar].skins[currentSkin[currentChar]].splash;
                }
            }
            else
            {
                namae.text = "Pulic variables not set";
                splash.sprite = null;
            }

            if (!isConnected)
                splash.sprite = null;
        }

        public void ChangeRight()
        {
            if (isSelected) return;

            currentChar++;
            if (currentChar >= sets.Length)
                currentChar -= sets.Length;

            UpdateDisplay();
        }

        public void ChangeLeft()
        {
            if (isSelected) return;

            currentChar--;
            if (currentChar < 0)
                currentChar += sets.Length;

            UpdateDisplay();
        }

        public void ChangeSkinRight()
        {
            if (isSelected) return;

            currentSkin[currentChar]++;
            if (currentSkin[currentChar] >= sets[currentChar].skins.Length)
                currentSkin[currentChar] -= sets[currentChar].skins.Length;

            UpdateDisplay();
        }

        public void ChangeSkinLeft()
        {
            if (isSelected) return;

            currentSkin[currentChar]--;
            if (currentSkin[currentChar] < 0)
                currentSkin[currentChar] += sets[currentChar].skins.Length;

            UpdateDisplay();
        }

        public void SelectCharacter()
        {
            isSelected = true;
            ready.enabled = true;
        }

        public void DeselectCharacter()
        {
            isSelected = false;
            ready.enabled = false;
        }

        public void Back()
        {
            
        }

        public void OnJoin()
        {
            isConnected = true;
            darkOverlay.enabled = false;
            splash.enabled = true;
            UpdateDisplay();
        }

        public void OnLeave()
        {
            isConnected = false;
            darkOverlay.enabled = true;
            splash.sprite = null;
            splash.enabled = false;
            namae.text = "";
        }
    }
}

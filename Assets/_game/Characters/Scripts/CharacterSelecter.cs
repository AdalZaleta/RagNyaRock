using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Rewired;

namespace Mangos {
    [RequireComponent(typeof(CharacterController))]
    public class CharacterSelecter : MonoBehaviour {

        public int PlayerId = 0; //The Rewired player id of this character
        public Image splash;
        public Image darkOverlay;
        public Text namae;
        public Text ready;
        public float changeCharDelay;
        [Range(0, 1)]
        public float charChangeThreshold;

        private bool isSelected;
        private CharacterSet[] sets;
        private int currentChar = 0;
        private int[] currentSkin;
        private Player player; //The Rewired Player
        private CharacterController cc;
        private float lastRightCharChange;
        private float lastLeftCharChange;

        [Header("Debug")]
        public bool join;
        public bool isConnected = false;
        public bool toggleConnect;
        public bool select;
        public bool back;
        public bool right;
        public bool left;
        public bool skinR;
        public bool skinL;

        private void Awake()
        {
            //Get the Rewired Player object for this player and keep it for the duration of the characte's lifetime
            player = ReInput.players.GetPlayer(PlayerId);

            //Get the character controller
            cc = GetComponent<CharacterController>();

            ReInput.ControllerConnectedEvent += OnControllerConnected;
            ReInput.ControllerDisconnectedEvent += OnControllerDisconnected;

            
        }

        // Use this for initialization
        void Start() {
            sets = Manager_Static.uiManager.characterSets;
            currentChar = PlayerId % sets.Length;
            currentSkin = new int[sets.Length];
            ready.enabled = false;

            lastRightCharChange = 0;
            lastLeftCharChange = 0;

            if (isConnected)
                OnJoin();
            else
                OnLeave();
        }

        // Update is called once per frame
        void Update() {
            GetInput();
            ProcessInput();

            //toggleConnect = 
           
        }

        private void GetInput()
        {
            //Get the input from the Rewired Player. All controllers that the Players owns will contribute, so it doesn't matter
            //Whether the input is coming from a joustick, the keyboard, mouse, or a custom controller
            select = player.GetButtonDown("Jump");
            back = player.GetButtonDown("Special");
            //right = player.GetButtonDown("");

            join = player.GetButtonDown("Join");

            Debug.Log("lastCharChange: " + lastRightCharChange + ", delay: " + changeCharDelay);

            if (lastRightCharChange + changeCharDelay < Time.time)
                right = (player.GetAxis("ChangeChar") > charChangeThreshold);
            else
                right = false;

            if (lastLeftCharChange + changeCharDelay < Time.time)
                left = (player.GetAxis("ChangeChar") < -charChangeThreshold);
            else
                left = false;

            skinR = (player.GetButtonDown("NextSkin"));
            skinL = (player.GetButtonDown("PreviousSkin"));

            back = player.GetButtonDown("Back");
            select = player.GetButtonDown("ToggleReady");

        }

        private void ProcessInput()
        {
            if (join)
                OnJoin();

            if (select)
            {
                if (!isSelected)
                    SelectCharacter();
                else
                    StartGameRequest();
            }
            if (back)
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
            if (right)
            {
                ChangeRight();
            }
            if (left)
            {
                ChangeLeft();
            }
            if (skinR)
            {
                ChangeSkinRight();
            }
            if (skinL)
            {
                ChangeSkinLeft();
            }
        }

        void OnControllerConnected(ControllerStatusChangedEventArgs args)
        {
            Debug.Log("A controller was connected! Name = " + args.name + " Id = " + args.controllerId + " Type = " + args.controllerType);
            OnJoin();
        }

        void OnControllerDisconnected(ControllerStatusChangedEventArgs args)
        {
            Debug.Log("A controller was disconnected! Name = " + args.name + " Id = " + args.controllerId + " Type = " + args.controllerType);
            OnLeave();
        }
        

        void OnDestroy()
        {
            // Unsubscribe from events
            ReInput.ControllerConnectedEvent -= OnControllerConnected;
            ReInput.ControllerDisconnectedEvent -= OnControllerDisconnected;
        }

        public void StartGameRequest()
        {
            //Ask player asigner if can start game and tell someone to start the game
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

            lastRightCharChange = Time.time;

            currentChar++;
            if (currentChar >= sets.Length)
                currentChar -= sets.Length;

            UpdateDisplay();
        }

        public void ChangeLeft()
        {
            if (isSelected) return;

            lastLeftCharChange = Time.time;

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
            Manager_Static.playerAssigner.SetReady(PlayerId, isSelected);
        }

        public void DeselectCharacter()
        {
            isSelected = false;
            ready.enabled = false;
            Manager_Static.playerAssigner.SetReady(PlayerId, isSelected);
        }

        public void Back()
        {
            
        }

        public void OnJoin()
        {
            Manager_Static.playerAssigner.AssignNextPlayer(PlayerId);
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

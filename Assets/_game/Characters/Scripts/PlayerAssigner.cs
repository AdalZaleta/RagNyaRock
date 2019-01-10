﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Rewired;

namespace Mangos
{
    public class PlayerAssigner : MonoBehaviour
    {
        public int maxPlayers = 4;
        public bool gameReadyToStart;

        private List<PlayerMap> playerMap; // Maps Rewired Player ids to game player ids
        private int gamePlayerIdCounter = 0;

        void Awake()
        {
            Manager_Static.playerAssigner = this;
            playerMap = new List<PlayerMap>();
        }

        void Update()
        {
            if (Manager_Static.gameStateManager.gameState != GameState.GAMEPLAY)
                return;

            // Watch for JoinGame action in each Player
            for (int i = 0; i < ReInput.players.playerCount; i++)
            {
                if (ReInput.players.GetPlayer(i).GetButtonDown("JoinGame"))
                {
                    AssignNextPlayer(i);
                }
            }
        }

        public void AssignNextPlayer(int rewiredPlayerId, bool isKey = false)
        {
            for(int i = 0; i < playerMap.Count; i++)
            {
                if(playerMap[i].rewiredPlayerId == rewiredPlayerId)
                {
                    return;
                }
            }

            if (playerMap.Count >= maxPlayers)
            {
                Debug.LogError("Max player limit already reached!");
                return;
            }

            int gamePlayerId = GetNextGamePlayerId();

            // Add the Rewired Player as the next open game player slot
            playerMap.Add(new PlayerMap(rewiredPlayerId, gamePlayerId));

            Player rewiredPlayer = ReInput.players.GetPlayer(rewiredPlayerId);

            // Disable the Assignment map category in Player so no more JoinGame Actions return
            rewiredPlayer.controllers.maps.SetMapsEnabled(false, "Default");

            // Enable UI control for this Player now that he has joined
            rewiredPlayer.controllers.maps.SetMapsEnabled(true, "UI");

            Debug.Log("Added Rewired Player id " + rewiredPlayerId + " to game player " + gamePlayerId);
        }

        public void SetReady(int playerId, bool b)
        {
            for(int i = 0; i < playerMap.Count; i++)
            {
                if (playerMap[i].gamePlayerId == playerId)
                {
                    playerMap[i].ready = b;
                    break;
                }
            }
        }

        private int GetNextGamePlayerId()
        {
            return gamePlayerIdCounter++;
        }

        public bool AreAllPlayersReady()
        {
            if (playerMap.Count < 2)
                return false;

            for(int i = 0; i < playerMap.Count; i++)
            {
                if (!playerMap[i].ready)
                    return false;
            }

            Manager_Static.uiManager.SetAllReadyNotice(true);

            return true;
        }

        // This class is used to map the Rewired Player Id to your game player id
        private class PlayerMap
        {
            public int rewiredPlayerId;
            public int gamePlayerId;
            public bool ready;

            public PlayerMap(int rewiredPlayerId, int gamePlayerId)
            {
                this.rewiredPlayerId = rewiredPlayerId;
                this.gamePlayerId = gamePlayerId;
                this.ready = false;
            }
        }
    }
}
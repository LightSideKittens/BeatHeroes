﻿using BeatRoyale;
using GameCore.Battle.Data;
using UnityEngine;
using static BeatRoyale.ShortNoteListener;
using static SoundventTypes;

namespace Battle
{
    public class OpponentWorld : BasePlayerWorld<OpponentWorld>
    {
        protected override bool IsOpponent => true;
        public static string userId; 

        [SerializeField] private Transform[] portals;
        private int portalIndex;
        private CardDecks decks;
        private readonly ShortNoteListener[] listeners = new ShortNoteListener[4];

        private void Start()
        {
            decks = MatchPlayersData.GetDecks(userId);
            listeners[0] = Listen(EnemyI).OnStarted(() => Spawn(0));
            listeners[1] = Listen(EnemyII).OnStarted(() => Spawn(1));
            listeners[2] = Listen(EnemyIII).OnStarted(() => Spawn(2));
            listeners[3] = Listen(EnemyIV).OnStarted(() => Spawn(3));
        }

        private void Spawn(int index)
        {
            portalIndex++;
            portalIndex %= portals.Length;
            Internal_Spawn(Units.ByName[decks.Defence[index]], portals[portalIndex].position);
        }

        protected override void OnStop()
        {
            for (int i = 0; i < Instance.listeners.Length; i++)
            {
                Instance.listeners[i].Dispose();
            }
        }
    }
}
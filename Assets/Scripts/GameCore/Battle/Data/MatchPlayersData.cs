﻿using System;
using System.Collections.Generic;
using System.Linq;
using Battle.Data;
using Core.ConfigModule;
using Core.Server;
using GameCore.Battle.Data;

namespace BeatRoyale
{
    public class MatchPlayersData
    {
        private CardDecks decks;
        private EntiProps properties;
        private User playerData;
        private static Dictionary<string, MatchPlayersData> byUserId = new();
        public static int Count => byUserId.Count;

        private MatchPlayersData(CardDecks decks, EntiProps properties, User playerData)
        {
            this.decks = decks;
            this.properties = properties;
            this.playerData = playerData;
        }

        public static string OpponentUserId => byUserId.ElementAt(0).Key;
        public static CardDecks GetDecks(string userId) => byUserId[userId].decks;
        public static EntiProps GetProperties(string userId) => byUserId[userId].properties;
        public static User GetPlayerData(string userId) => byUserId[userId].playerData;

        public static void Add(string userId, Action onSuccess)
        {
            UserDatabase<CardDecks>.Fetch(userId, decks =>
            {
                UserDatabase<EntiProps>.Fetch(userId, properties =>
                {
                    UserDatabase<User>.Fetch(userId, playerData =>
                    {
                        byUserId.Add(userId, new MatchPlayersData(decks, properties, playerData));
                        onSuccess();
                    });
                });
            });
        }

        public static void Clear()
        {
            byUserId.Clear();   
        }
    }
}
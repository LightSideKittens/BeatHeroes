﻿using Core.Extensions.Unity;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

namespace BeatRoyale.Windows
{
    public class MatchWindow : BaseLauncherWindow<MatchWindow>
    {
        [SerializeField] private string opponentUserId;
        [SerializeField] private Button matchButton;
        protected override int Internal_Index => 2;

        protected override void Init()
        {
            base.Init();
            matchButton.AddListener(Match);
        }

        private void Match()
        {
            MatchPlayersData.Clear();
            MatchPlayersData.Add(opponentUserId, () =>
            {
                SceneManager.LoadScene(1);
            });
        }
    }
}
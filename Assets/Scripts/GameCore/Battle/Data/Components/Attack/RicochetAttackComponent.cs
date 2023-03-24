﻿using System;
using System.Collections.Generic;
using Battle.Data;
using Battle.Data.GameProperty;
using DG.Tweening;
using UnityEngine;
using Object = UnityEngine.Object;
using Health = GameCore.Battle.Data.Components.HealthComponent;

namespace GameCore.Battle.Data.Components
{
    [Serializable]
    internal class RicochetAttackComponent : AttackComponent
    {
        [SerializeField] private GameObject bulletPrefab;
        [SerializeField] private ParticleSystem deathFx;
        private GameObject bullet;
        private Transform lastTarget;
        private HashSet<Transform> hited;
        private RicochetData ricochetData;
        private float tempDamage;
        private int ricochetCount;

        protected override void OnInit(string entityName)
        {
            ricochetData = RicochetData.Get(EntiProps.ByName[entityName][nameof(RicochetGP)].value);
            tempDamage = Damage;
            hited = new HashSet<Transform>();
        }

        protected override Tween AttackAnimation()
        {
            hited.Clear();
            tempDamage = Damage;
            ricochetCount = 0;
            bullet = Object.Instantiate(bulletPrefab, transform.position, Quaternion.identity);
            Attack();
            return null;
        }

        private void Attack()
        {
            lastTarget = findTargetComponent.target;
            bullet.transform.DOMove(lastTarget.position, duration).OnComplete(Ricochet);
        }

        private void Ricochet()
        {
            Object.Instantiate(deathFx, lastTarget.position, Quaternion.identity);
            lastTarget.Get<Health>().TakeDamage(tempDamage);
            hited.Add(lastTarget);
            tempDamage -= tempDamage * (ricochetData.decreasePercent / 100f);
            
            if (findTargetComponent.Find(lastTarget.position, (float)ricochetData.radius, hited))
            { 
                if (ricochetData.ricochetCount > ricochetCount)
                {
                    Attack();
                }
                else
                {
                    Object.Destroy(bullet);
                }
            
                ricochetCount++;
            }
            else
            {
                Object.Destroy(bullet);
            }
        }
    }
}
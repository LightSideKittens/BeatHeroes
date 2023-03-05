﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using Firebase.Extensions;
using Firebase.Storage;
using Newtonsoft.Json;
using UnityEngine;

namespace Core.ConfigModule
{
    public static class StorageRemoteConfig<T> where T : BaseConfig<T>, new()
    {
        private const long MaxAllowedSize = 4 * 1024 * 1024;
        private static StorageReference reference;
        private static StorageReference versionsReference;
        private static Func<StorageReference> getter;
        private static Dictionary<string, int> localVersions;
        
        static StorageRemoteConfig()
        {
            getter = GetReference;
        }

        private static StorageReference GetReference()
        {
            var configsRef = FirebaseStorage.DefaultInstance.RootReference.Child($"{FolderNames.Configs}");
            getter = GetCreatedReference;
            var config = BaseConfig<T>.Config;
            reference = configsRef.Child($"{config.FileName}.{config.Ext}");
            
            var configVersions = ConfigVersions.Config;
            localVersions = new Dictionary<string, int>(configVersions.versions);
            versionsReference = configsRef.Child($"{configVersions.FileName}.{configVersions.Ext}");

            return reference;
        }
        private static StorageReference GetCreatedReference() => reference;

        public static void Push(Action onSuccess = null, Action onError = null)
        {
            var storageRef = getter();
            
            var config = BaseConfig<T>.Config;
            var json = JsonConvert.SerializeObject(config, config.Settings);
            storageRef.PutBytesAsync(Encoding.UTF8.GetBytes(json)).ContinueWithOnMainThread(task =>
            {
                if (task.IsCompleted && task.IsCompletedSuccessfully)
                {
                    Debug.Log($"[{typeof(T).Name}] Push Success!"); ;
                    Invoke(onSuccess);
                }
                else if (task.IsFaulted || task.IsCanceled)
                {
                    Debug.LogError($"[{typeof(T).Name}] Push Error: {task.Exception.Message}");
                    Invoke(onError);
                }
            });
        }

        public static void Fetch(Action onSuccess = null, Action onError = null)
        {
            var storageRef = getter();
            if (ConfigVersions.IsVersionsFetched)
            {
                FetchIfNeed();
            }
            else
            {
                Internal_Fetch<ConfigVersions>(versionsReference, OnSuccess, onError);
                
                void OnSuccess()
                {
                    ConfigVersions.IsVersionsFetched = true;
                    FetchIfNeed();
                }
            }

            void FetchIfNeed()
            {
                var fileName = BaseConfig<T>.Config.FileName;
                localVersions.TryGetValue(fileName, out var localLevel);
                var remoteVersions = ConfigVersions.Config.versions;

                if (localLevel != remoteVersions[fileName])
                {
                    Debug.Log($"[{typeof(T).Name}] Different Versions! Local: {localLevel} | Remote: {remoteVersions[fileName]}");
                    Internal_Fetch<T>(storageRef, () =>
                    {
                        localVersions[fileName] = remoteVersions[fileName];
                        Invoke(onSuccess);
                    }, onError);
                }
                else
                {
                    Debug.Log($"[{typeof(T).Name}] Versions is identical! Version: {localLevel}");
                    Invoke(onSuccess);
                }
            }
        }

        private static void Internal_Fetch<T1>(StorageReference storageRef, Action onSuccess = null, Action onError = null) where T1 : BaseConfig<T1>, new()
        {
            Debug.Log($"[{typeof(T1).Name}] Fetch! Path: {storageRef.Path}");
            
            storageRef.GetBytesAsync(MaxAllowedSize).ContinueWithOnMainThread(task =>
            {
                if (task.IsCompleted && task.IsCompletedSuccessfully)
                {
                    var bytes = task.Result;
                    
                    if (bytes == null)
                    {
                        Debug.LogError($"[{typeof(T1).Name}] Fetch Error: {task.Exception.Message}");
                        Invoke(onError);
                        return;
                    }
                    
                    BaseConfig<T1>.Deserialize(Encoding.UTF8.GetString(bytes));
                    Debug.Log($"[{typeof(T1).Name}] Fetch Success!");
                    Invoke(onSuccess);
                }
                else if (task.IsFaulted || task.IsCanceled)
                {
                    Debug.LogError($"[{typeof(T1).Name}] Fetch Error: {task.Exception.Message}");
                    Invoke(onError);
                }
            });
        }

        private static void Invoke(Action action)
        {
            try { action?.Invoke(); }
            catch (Exception e) { Debug.LogException(e); }
        }
    }
}
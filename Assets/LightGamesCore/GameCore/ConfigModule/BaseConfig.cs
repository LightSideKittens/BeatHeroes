#if !UNITY_EDITOR
#define NOT_EDITOR
#endif

using System;
using System.Diagnostics;
using System.IO;
using Newtonsoft.Json;
using UnityEngine;
using static Core.ConfigModule.FolderNames;
using Debug = UnityEngine.Debug;

namespace Core.ConfigModule
{
    [Serializable]
    public abstract class BaseConfig<T> where T : BaseConfig<T>, new()
    {
        protected internal virtual JsonSerializerSettings Settings { get; } = new JsonSerializerSettings
        {
            ContractResolver = UnityJsonContractResolver.Instance
        };

        public static bool IsNull => instance == null;
        public static bool IsLoaded { get; private set; }

        protected static T instance;
        
        private static Func<T> getter;

        static BaseConfig()
        {
            getter = StaticConstructor;
        }
        
        public static void LoadOnNextAccess()
        {
            getter = ResetGetter;
        }

        private static T ResetGetter()
        {
            instance = new T();
            Load();

            return instance;
        }

        private static T StaticConstructor()
        {
            CreateInstance();
            Load();

            return instance;
        }

        protected abstract string FullFileName { get; }

        protected abstract string FolderPath { get; }

        protected internal abstract string Ext { get; }
        public static T Config => getter();

        protected internal abstract string FileName { get; set; }
        protected virtual string FolderName => GetType().Name;
        
        protected virtual void SetDefault(){}
        protected virtual void OnLoading(){}
        protected virtual void OnLoaded(){}
        protected virtual void OnSaving(){}
        protected virtual void OnSaved(){}

        public static void Initialize() => getter();

        [Conditional("UNITY_EDITOR")]
        private static void Generate()
        {
            instance = new T();
            Load();
            Save();
        }

        protected static T Load()
        {
            instance.OnLoading();
            
            var fullFileName = instance.FullFileName;
            string json = string.Empty;
            
            
            if (File.Exists(fullFileName))
            {
                json = File.ReadAllText(fullFileName);
            }
            else
            {
                json = Resources.Load<TextAsset>(Path.Combine(instance.FolderName, instance.FileName))?.text;
            }

            if (string.IsNullOrEmpty(json) == false)
            {
                Deserialize(json);
            }
            else
            {
                instance.SetDefault();
                getter = GetInstance;
            }
            
            IsLoaded = true;
            instance.OnLoaded();
            
            return instance;
        }

        public static void Save() => Set(instance);

#if UNITY_EDITOR
        public static void Editor_SaveAsDefault()
        {
            var folderPath = Path.Combine(Application.dataPath, Configs, DefaultSaveData, instance.FolderName);
            var fullFileName = Path.Combine(folderPath, $"{instance.FileName}.{instance.Ext}");
            Internal_Set(instance, folderPath, fullFileName);
        }
#endif

        public static void Set(T config)
        {
            Internal_Set(config, config.FolderPath, config.FullFileName);
        }

        private static void Internal_Set(T config, string folderPath, string fullFileName)
        {
            instance.OnSaving();
            
            if (Directory.Exists(folderPath) == false)
            {
                Directory.CreateDirectory(folderPath);
            }

            var json = Serialize(config);
            
            CheckFileNameIsNullOrEmpty();
            File.WriteAllText(fullFileName,json);
            ConfigsTypeData.AddPath(fullFileName);
            instance.OnSaved();
        }
        
        [Conditional("UNITY_EDITOR")]
        private static void CheckFileNameIsNullOrEmpty()
        {
            if (string.IsNullOrEmpty(instance.FileName))
            {
                instance.FileName = "NULL_NAME";
            }
        }

        private static T GetInstance() => instance;
        
        private static void CreateInstance()
        {
            UnityEventWrapper.UnSubscribeFromApplicationPausedEvent(Save);
            UnityEventWrapper.SubscribeToApplicationPausedEvent(Save);
            instance = new T();
        }

        public static void UpdateName(string newName)
        {
            if (instance.FileName.Equals(newName) == false)
            {
                getter = Load;
                instance.FileName = newName;
            }
        }

        internal static void Deserialize(string json)
        {
            Debug.Log($"[{typeof(T).Name}] Deserialize");
            instance = JsonConvert.DeserializeObject<T>(json, instance.Settings);
            getter = GetInstance;
        }

        private static string Serialize(T config)
        {
            Debug.Log($"[{typeof(T).Name}] Serialize");
            var json = string.Empty;
            Serialize_Editor(config, ref json);
            Serialize_Runtime(config, ref json);

            return json;
        }

        [Conditional("UNITY_EDITOR")]
        private static void Serialize_Editor(T config, ref string json)
        {
            json = JsonConvert.SerializeObject(config, Formatting.Indented, config.Settings);
        }
        
        [Conditional("NOT_EDITOR")]
        private static void Serialize_Runtime(T config, ref string json)
        {
            json = JsonConvert.SerializeObject(config, config.Settings);
        }
    }
}
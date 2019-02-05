using System.Collections;
using System.Collections.Generic;
using UnityEngine;


namespace Mangos
{
    public enum Sounds : int
    {
        CASCADA,
        CASCADA_ESCENARIO,
        ESPACIO_SONIDOS_Y_MUSICA, //Espacio 2
        METEORO,
        NOTAS_ESCENARIO,
        ASTRONAUTA,
        BALLESTERO_FLECHA, //Espacio 2
        MAROMETA,
        CAIDA_CABALLERO,
        GOLPE_CABALLERO,
        CAMINAR_CABALLERO,
        MAGO_SUMMON,
        BOLA_FUEGO,
        EXPLOSION,
        SKIN_CALAVERA,
        DISPARO_VAQUERO,
        LANZAMIENTO_OBJETOS,
        MUSICA_MENU
    }

    public class Manager_Audio : MonoBehaviour
    {
        public float masterVolume = 1;
        [Tooltip("Es un emptyObject con un audio Soruce")]
        public GameObject audioDad;
        public Camera cam;
        public AudioClip mainMenu;

        public AudioClip[] clips;
        public int[] groupSizes;
        private int[] clipIndex;

        void SetVolumenGeneral(float value)
        {
            Manager_Static.GeneralVolumen = value;
        }

        void Awake()
        {
            Manager_Static.audioManager = this;
        }

        void Start()
        {
            SetVolumenGeneral(1);

            DontDestroyOnLoad(this);

            //Getting clip group index for easier use
            clipIndex = new int[groupSizes.Length];
            int counter = 0;
            for (int i = 0; i < groupSizes.Length; i++)
            {
                clipIndex[i] = counter;
                counter += groupSizes[i];
            }
            //Setting cam if not publicly set
            if (!cam)
                cam = Camera.main;
            //Making sure audio dad is set up correctly
            if (!audioDad.GetComponent<AudioDad>())
            {
                audioDad.AddComponent<AudioDad>();
            }
            //Making pools and prespawning
            PoolManager.MakePool(audioDad);
            PoolManager.SetPoolLimit(audioDad, clips.Length * 50);
            PoolManager.PreSpawn(audioDad, clips.Length * 6, false);
        }

        public void PlaySoundAt(Vector3 pos, AudioClip clip)
        {
            Transform sound = PoolManager.Spawn(audioDad, pos, Quaternion.identity);
            AudioSource temp = sound.GetComponent<AudioSource>();
            temp.volume = Manager_Static.GeneralVolumen / 100;
            temp.clip = clip;
            temp.PlayOneShot(clip);
            sound.GetComponent<AudioDad>().Despawn(clip.length);
        }

        public void PlaySoundAt(Vector3 pos, Sounds clip)
        {
            int index = Random.Range(clipIndex[(int)clip], clipIndex[(int)clip] + groupSizes[(int)clip]);

            Transform sound = PoolManager.Spawn(audioDad, pos, Quaternion.identity);
            AudioSource temp = sound.GetComponent<AudioSource>();
            temp.volume = Manager_Static.GeneralVolumen / 100;
            temp.PlayOneShot(clips[index]);
            sound.GetComponent<AudioDad>().Despawn(clips[index].length);
        }

        public void PlaySoundGlobal(AudioClip clip)
        {
            Transform sound = PoolManager.Spawn(audioDad, cam.transform.position, Quaternion.identity);
            sound.parent = cam.transform;
            AudioSource temp = sound.GetComponent<AudioSource>();
            temp.volume = Manager_Static.GeneralVolumen / 100;
            temp.PlayOneShot(clip);
            sound.GetComponent<AudioDad>().Despawn(clip.length);
        }

        public void PlaySoundGlobal(Sounds clip)
        {
            Debug.Log((int)clip);
            Debug.Log(clipIndex.Length);
            int index = Random.Range(clipIndex[(int)clip], clipIndex[(int)clip] + groupSizes[(int)clip]);
            Transform sound = PoolManager.Spawn(audioDad, cam.transform.position, Quaternion.identity);
            sound.parent = cam.transform;
            AudioSource temp = sound.GetComponent<AudioSource>();
            temp.volume = Manager_Static.GeneralVolumen / 100;
            temp.PlayOneShot(clips[index]);
            sound.GetComponent<AudioDad>().Despawn(clips[index].length);
        }

        public void PlayMusic(AudioClip clip)
        {
            if (!GameObject.Find("jukebox"))
            {
                Transform jukebox = PoolManager.Spawn(audioDad, cam.transform.position, Quaternion.identity);
                jukebox.parent = cam.transform;
                jukebox.gameObject.name = "jukebox";
                AudioSource temp = jukebox.GetComponent<AudioSource>();
                temp.clip = clip;
                temp.loop = true;
                temp.volume = Manager_Static.GeneralVolumen / 100;
                temp.Play();
            }
            else
            {
                AudioSource temp = GameObject.Find("jukebox").GetComponent<AudioSource>();
                temp.clip = clip;
                temp.volume = Manager_Static.GeneralVolumen / 100;
                temp.Play();
            }
        }

        public void PlayMusic(Sounds clip)
        {
            int index = Random.Range(clipIndex[(int)clip], clipIndex[(int)clip] + groupSizes[(int)clip]);

            if (!GameObject.Find("jukebox"))
            {
                Transform jukebox = PoolManager.Spawn(audioDad, cam.transform.position, Quaternion.identity);
                jukebox.parent = cam.transform;
                jukebox.gameObject.name = "jukebox";
                AudioSource temp = jukebox.GetComponent<AudioSource>();
                temp.clip = clips[(int)clip];
                temp.loop = true;
                temp.volume = Manager_Static.GeneralVolumen / 100;
                temp.Play();
            }
            else
            {
                AudioSource temp = GameObject.Find("jukebox").GetComponent<AudioSource>();
                temp.clip = clips[(int)clip];
                temp.volume = Manager_Static.GeneralVolumen / 100;
                temp.Play();
            }
        }

        public void StopMusic()
        {
            GameObject jukebox = GameObject.Find("jukebox");
            if (jukebox)
            {
                jukebox.GetComponent<AudioDad>().Despawn();
            }
        }
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class MageULTController : MonoBehaviour
    {

        public GameObject sorcery;
        public GameObject meteor;
        public float movementSpeed;

        public void Awake()
        {
            Debug.Log("sorcery: " + sorcery);
            sorcery.SetActive(false);
            sorcery.GetComponent<Rigidbody>().velocity = Vector3.zero;
        }

        public void SpawnPointer()
        {
            sorcery.transform.position = transform.position;
            sorcery.SetActive(true);
        }

        public void MoveSorcery(float _xDir, float _zDir)
        {
            Debug.Log("Moving Pointer x: " + _xDir + " / z: " + _zDir);
            Vector3 finalVel = sorcery.GetComponent<Rigidbody>().velocity;
            finalVel.x = _xDir * movementSpeed;
            finalVel.z = _zDir * movementSpeed;
            sorcery.GetComponent<Rigidbody>().velocity = finalVel;
        }

        public void SpawnMeteor()
        {
            GameObject go = Instantiate(meteor, new Vector3(sorcery.transform.position.x, sorcery.transform.position.y + 10, sorcery.transform.position.z), transform.rotation);
            go.GetComponent<Rigidbody>().velocity = go.transform.up * -1 * 10;
            sorcery.SetActive(false);
            Destroy(go, 5.0f);
        }
    }
}
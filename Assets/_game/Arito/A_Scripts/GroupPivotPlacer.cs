using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Mangos
{
    public class GroupPivotPlacer : MonoBehaviour
    {

        public GameObject[] members;
        public GameObject follower;

        // Use this for initialization
        void Start()
        {
            follower.GetComponent<CameraFollow>().SwitchTarget(transform);
        }

        private void Update()
        {
            transform.position = FindCenter(members);
        }

        private Vector3 FindCenter(GameObject[] _gos)
        {
            if (_gos.Length == 0)
                return Vector3.zero;
            if (_gos.Length == 1)
                return _gos[0].transform.position;
            Bounds bounds = new Bounds(_gos[0].transform.position, Vector3.zero);
            for (var i = 1; i < _gos.Length; i++)
                bounds.Encapsulate(_gos[i].transform.position);
            return bounds.center;
        }
    }
}
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ULT_Warrior : MonoBehaviour {

    public GameObject yutaponBundle;
    public float explosionPower;

    private SphereCollider explosionRadius;

    private void OnTriggerEnter(Collider _col)
    {
        if (_col.gameObject.CompareTag("Player"))
        {
            Vector3 pushDir = (_col.gameObject.transform.position - transform.position).normalized;
            _col.gameObject.GetComponent<Rigidbody>().AddForce(pushDir * explosionPower, ForceMode.Impulse);
        }
    }

    // Use this for initialization
    void Start () {
        explosionRadius = GetComponent<SphereCollider>();
        explosionRadius.enabled = false;
	}

    public void SpawnYutapon(float _offsetPower, float _delay)
    {
        StartCoroutine(YutaponDelayer(_delay));
    }

    IEnumerator YutaponDelayer(float _delay)
    {
        yield return new WaitForSeconds(_delay);
        GameObject go = Instantiate(yutaponBundle, transform.position, Quaternion.identity);
        Destroy(go, 5.0f);
        explosionRadius.enabled = true;
    }
}

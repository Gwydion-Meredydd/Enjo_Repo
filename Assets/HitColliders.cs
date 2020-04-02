using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitColliders : MonoBehaviour
{
    public GameObject Player_;
    public GameObject CollisionHit;
    public bool Fist;
    public bool Sword;
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            Physics.IgnoreCollision(Player_.GetComponent<Collider>(), GetComponent<Collider>());
        }
        if (Fist == true)
        {
            CollisionHit = other.gameObject;
            Player_.SendMessage("FistHit", CollisionHit);
            Debug.Log("Fist_Hit");
        }
        if (Sword == true)
        {
            CollisionHit = other.gameObject;
            Player_.SendMessage("SwordHit", CollisionHit);
        }
    }
       
}

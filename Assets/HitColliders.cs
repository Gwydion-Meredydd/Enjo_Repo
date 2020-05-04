using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HitColliders : MonoBehaviour
{
    public GameObject Player_;
    public GameObject CollisionHit;
    public ParticleSystem FistHitFireSystem;
    public Charactermanager PlayerRefrence;
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
            if (CollisionHit.tag == "Enemy")
            {
                if (Input.GetButton("Fire1"))
                {
                    if (PlayerRefrence.Mana > 0)
                    {
                        Debug.Log("GUARDHIT");
                        FistHitFireSystem.Play();
                    }
                }
            }
        }
        else if (Sword == true)
        {
            
            CollisionHit = other.gameObject;
            Player_.SendMessage("SwordHit", CollisionHit);
            if (CollisionHit.tag == "Enemy")
            {
                if (Input.GetButton("Fire1"))
                {
                    if (PlayerRefrence.Mana > 0)
                    {
                        Debug.Log("apgnapignapgnapng");
                        FistHitFireSystem.Play();
                    }
                }
            }
        }
    }
       
}

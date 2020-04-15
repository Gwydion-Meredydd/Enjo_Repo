using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class EnemyDamage : MonoBehaviour
{
    public GameObject DamageUI;
    public Text DamageText;
    public GameObject QuestManager;
    public Animator EnemeyAnimator;
    public int Health;
    public bool Enemey;
    public bool ScareCrow;
    public bool Burn;
    public ParticleSystem Fire;
    public GameObject[] ObjectsToDestory;
    public MeshRenderer ScareCrowMesh;
    public Rigidbody Rididbody_;
    private void Start()
    {
        DamageText.text = Health.ToString();
    }
    public void Damage(int HitAmmount) 
    {
        if (Enemey == true)
        { 

        }
        if (ScareCrow == true) 
        {
            DamageUI.SetActive(true);
            Health = Health - HitAmmount;
            if (Health == 0) 
            {
                QuestManager.SendMessage("ScareCrow");
                Rididbody_.isKinematic = false;
            }
        }
        if (Health > 0)
        {
            DamageText.text = Health.ToString();
        }
        if (Health <= 0)
        {
            DamageText.text = ("");
            if (Burn == true) 
            {
                StartCoroutine(FireBurn());
            }
        }
    }
    IEnumerator FireBurn()
    {
        if (ScareCrow == true) 
        {
            EnemeyAnimator.SetBool("Dead", true);
        }
        Fire.Play();
        yield return new WaitForSeconds(2f);
        if (ScareCrow == true)
        {
            ScareCrowMesh.enabled = false;
        }
        for (int i = 0; i  < ObjectsToDestory.Length; i++) 
        {
            ObjectsToDestory[i].SetActive(false);
            Debug.Log(i);

        }
        yield return new WaitForSeconds(5f);
        Destroy(gameObject);
    }
}

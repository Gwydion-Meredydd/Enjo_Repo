using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class EnemyDamage : MonoBehaviour
{
    public GameObject DamageUI;
    public Text DamageText;
    public GameObject QuestManager;
    public int Health;
    public bool Enemey;
    public bool ScareCrow;
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
        }
    }
}

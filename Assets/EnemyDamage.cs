using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.AI;
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
    public bool Hited;
    public bool IsAttacking;
    public bool Dead;
    public ParticleSystem Fire;
    public GameObject[] ObjectsToDestory;
    public MeshRenderer ScareCrowMesh;
    public Rigidbody Rididbody_;
    public NavMeshAgent Agent;
    public Transform Target;
    public float distance;
    private Vector3 previousPosition;
    public float CurrentSpeed;
    public GameObject Player;
    private void Start()
    {
        DamageText.text = Health.ToString();
    }
    void Update()
    {
        if (Enemey == true)
        {
            Agent.destination = Target.position;
            distance = Vector3.Distance(transform.position, Target.transform.position);
            Vector3 curMove = transform.position - previousPosition;
            CurrentSpeed = curMove.magnitude / Time.deltaTime;
            previousPosition = transform.position;
            if (CurrentSpeed > 0.1)
            {
                Debug.Log("agag");
                EnemeyAnimator.SetBool("Walk", true);
            }
            if (distance <= 5)
            {
                Agent.isStopped = true;
                EnemeyAnimator.SetBool("Attack", true);
                EnemeyAnimator.SetBool("Walk", false);
                StartCoroutine(Attacking());
            }
            else
            {
                IsAttacking = false;
                Hited = false;
                Agent.isStopped = false;
                EnemeyAnimator.SetBool("Attack", false);
                EnemeyAnimator.SetBool("Walk", true);
            }
            if (Health <= 0)
            {
                IsAttacking = true;
                Agent.isStopped = true;
                Agent.speed = 0;
                Rididbody_.isKinematic = true;
            }

        }
    }
    public void Damage(int HitAmmount)
    {
        if (Enemey == true)
        {
            Health = Health - HitAmmount;
            if (Health <= 0)
            {
                EnemeyAnimator.SetBool("Dead", true);
                Agent.isStopped = true;
                if (Dead == false) 
                {
                    Dead = true;
                    QuestManager.SendMessage("EnemyKilled");
                }
            }
            else
            {
                DamageText.text = Health.ToString();
                EnemeyAnimator.SetBool("Hit", true);
                StartCoroutine(Hit());
            }
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
        for (int i = 0; i < ObjectsToDestory.Length; i++)
        {
            ObjectsToDestory[i].SetActive(false);
            Debug.Log(i);

        }
        yield return new WaitForSeconds(5f);
        Destroy(gameObject);
    }
    IEnumerator Hit()
    {
        Hited = true;
        yield return new WaitForSeconds(0.5f);
        EnemeyAnimator.SetBool("Hit", false);
        Hited = false;
    }
    IEnumerator Attacking()
    {
        if (IsAttacking == false)
        {
            if (Hited == false)
            {
                IsAttacking = true;
                yield return new WaitForSeconds(1f);
                if (Hited == false)
                {
                    IsAttacking = false;
                    Player.SendMessage("DamageDelt");
                }
            }
        }
    }
}

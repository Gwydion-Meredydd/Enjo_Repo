using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class VillagerNPC : MonoBehaviour
{
    public NavMeshAgent NavMesh;
    public Animator VillagerAnimater;
    public float distance;
    public bool InRange;
    public Transform CurrentTarget;
    public Transform[] Waypoints;
    // Start is called before the first frame update
    void Start()
    {
        VillagerAnimater = GetComponent<Animator>();
        NavMesh = GetComponent<NavMeshAgent>();
        CurrentTarget = Waypoints[Random.Range(0, Waypoints.Length)];
        VillagerAnimater.SetBool("Walking", true);
    }

    // Update is called once per frame
    void Update()
    {
        NavMesh.destination = CurrentTarget.transform.position;
        distance = Vector3.Distance(transform.position, CurrentTarget.transform.position);
        
        if (distance < 4) 
        {
            VillagerAnimater.SetBool("Walking", false);
            StartCoroutine(NewCurrentTarget());
            NewCurrentTarget();
        }
    }
    public void PlayerEnter() 
    {
        NavMesh.isStopped = true;
        Debug.Log("DD");
        VillagerAnimater.SetBool("Walking", false);
        VillagerAnimater.SetBool("Talking", true);
        NavMesh.speed = 0;
    }
    public void PlayerExit() 
    {
        NavMesh.isStopped = false;
        Debug.Log("DDD");
        VillagerAnimater.SetBool("Walking", true);
        VillagerAnimater.SetBool("Talking", false);
        NavMesh.speed = 5;
        NavMesh.destination = CurrentTarget.transform.position;
    }
    IEnumerator NewCurrentTarget() 
    {
        yield return new WaitForSeconds(2);
        VillagerAnimater.SetBool("Walking", true);
        CurrentTarget = Waypoints[Random.Range(0, Waypoints.Length)];
    }
}

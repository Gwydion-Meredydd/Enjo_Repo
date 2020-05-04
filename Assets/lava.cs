using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class lava : MonoBehaviour
{
    public GameObject Player;
    public Transform ResetOne;
    public Transform ResetTwo;
    public bool Sword;
    public Animator Transition;
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            if (Sword == false)
            {
                StartCoroutine(Teleport());
            }
            else 
            {
                StartCoroutine(TeleportSword());
            }
        }
    }
    public void NewRestPoint() 
    {
        Sword = true;
    }
    IEnumerator Teleport()
    {
        Transition.SetBool("CircleTransition", true);
        yield return new WaitForSeconds(0.5f);
        Player.GetComponent<CharacterController>().enabled = false;
        Player.transform.position = ResetOne.position;
        Player.GetComponent<CharacterController>().enabled = true;
        Transition.SetBool("CircleTransition", false);
    }
    IEnumerator TeleportSword()
    {
        Transition.SetBool("CircleTransition", true);
        yield return new WaitForSeconds(0.5f);
        Player.GetComponent<CharacterController>().enabled = false;
        Player.transform.position = ResetTwo.position;
        Player.GetComponent<CharacterController>().enabled = true;
        Transition.SetBool("CircleTransition", false);
    }

}

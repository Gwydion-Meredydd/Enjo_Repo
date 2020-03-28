using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpDetection : MonoBehaviour
{
    public string EnterMessageToSend;
    public string ExitMessageToSend;
    public bool Destory;
    public bool NPC;
    public bool HasSpoken;
    public bool Door;
    public bool TeleportCheck;
    public GameObject TeleportLocation;
    public bool SendStayMessage;
    public bool SendExitMessage;
    public bool Coin;
    public GameObject Player;
    // Start is called before the first frame update

    private void Start()
    {
        Player = GameObject.FindWithTag("Player");

    }

    void OnTriggerStay(Collider other)
    {
        if (SendStayMessage == true && Door == false)
        {
            if (other.gameObject.tag == "Player")
            {
                other.SendMessage(EnterMessageToSend);
                if (Input.GetButtonDown("Interact") && Destory == true && Coin == true)
                {
                    Destroy(gameObject);
                }
            }
        }
        if (Door == true && TeleportCheck == false)
        {
            TeleportCheck = true;
            if (other.gameObject.tag == "Player")
            {
                StartCoroutine(Teleport());
            }
        }
    }
    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Player" && Door == false)
        {
            other.SendMessage(EnterMessageToSend);

            if (Coin == false && Destory == true)
            {
                Destroy(gameObject);
            }


        }
        if (NPC == true && HasSpoken == false)
        {
            if (other.gameObject.tag == "Player")
            {
                gameObject.SendMessage(EnterMessageToSend);
                HasSpoken = true;
                Player.SendMessage("CantMove");

            }
        }

    }
    void OnTriggerExit(Collider other)
    {
        TeleportCheck = false;
        if (SendExitMessage == true)
        {
            if (other.gameObject.tag == "Player")
            {

                other.SendMessage(ExitMessageToSend);

            }
        }

    }
    IEnumerator Teleport()
    {
        Player.SendMessage(EnterMessageToSend);
        yield return new WaitForSeconds(0.5f);
        Player.SendMessage(EnterMessageToSend);
        Player.GetComponent<CharacterController>().enabled = false;
        //Player.transform.position = new Vector3(663f, -44.87f, 289);
        Player.transform.position = TeleportLocation.transform.position;
        Player.GetComponent<CharacterController>().enabled = true;
    }

    

    
}

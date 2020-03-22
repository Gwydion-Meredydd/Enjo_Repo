using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpDetection : MonoBehaviour
{
    public string EnterMessageToSend;
    public string ExitMessageToSend;
    public bool Destory;
    public bool Door;
    public bool TeleportCheck;
    public GameObject TeleportLocation;
    public bool SendStayMessage;
    public bool SendExitMessage;
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
                if (Input.GetButtonDown("Interact") && Destory == true)
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

        if (other.gameObject.tag == "Player"&& Door ==false)
        {

            other.SendMessage(EnterMessageToSend);


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

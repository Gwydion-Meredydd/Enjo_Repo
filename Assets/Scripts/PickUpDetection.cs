using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PickUpDetection : MonoBehaviour
{
    public string EnterMessageToSend;
    public string ExitMessageToSend;
    public bool Destory;
    public bool NPC, WonderingVillager;
    public bool HasSpoken;
    public bool Door;
    public bool TeleportCheck;
    public GameObject TeleportLocation;
    public bool SendStayMessage;
    public bool SendExitMessage;
    public bool Coin;
    public bool Guard;
    public bool NPCQuest,WonderingVillagerQuest;
    public Text InteractText;
    public GameObject Player;
    public GameObject QuestManager;
    public AudioSource coinSound;
 
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
                    coinSound.Play();
                    
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
        if (NPC == true && Guard == false && HasSpoken == false) 
        {
            if (NPCQuest == false)
            {
                gameObject.SendMessage("PlayerEnter");
            }
            InteractText.text = "Press E to interact";
            if (Input.GetButtonDown("Interact"))
            {
                InteractText.text = "";
                HasSpoken = true;
                Debug.Log("HEY");
                if (NPCQuest == false && WonderingVillager == false)
                {
                    QuestManager.SendMessage("VillagerSpoken");
                }
                gameObject.SendMessage(EnterMessageToSend);
                HasSpoken = true;
                Player.SendMessage("CantMove");
                if (WonderingVillagerQuest == true)
                {
                    QuestManager.SendMessage("VillagerSpeakingAmmount");
                }
            }
        }
    }
    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Player" && Door == false)
        {
            if (NPC == false)
            {
                other.SendMessage(EnterMessageToSend);
            }
            if (Coin == false && Destory == true)
            {
                Destroy(gameObject);
            }


        }
        if (NPC == true && HasSpoken == false)
        {
            if (other.gameObject.tag == "Player")
            {
                if (Guard == true)
                {

                    gameObject.SendMessage(EnterMessageToSend);
                    HasSpoken = true;
                    Player.SendMessage("CantMove");
                }
                else 
                {
                    InteractText.text = "Press E to interact";
                    if (Input.GetButtonDown("Interact"))
                    {
                        Debug.Log("HEY");
                        QuestManager.SendMessage("VillagerSpoken");
                        gameObject.SendMessage(EnterMessageToSend);
                        HasSpoken = true;
                        Player.SendMessage("CantMove");
                    }
                }
            }
        }

    }
    void OnTriggerExit(Collider other)
    {
        TeleportCheck = false;
        if (SendExitMessage == true)
        {
            if (NPCQuest == false)
            {
                if (other.gameObject.tag == "Player")
                {
                    other.SendMessage(ExitMessageToSend);
                }
            }
            if (NPCQuest == true) 
            {
                if (HasSpoken == true) 
                {
                    if (other.gameObject.tag == "Player")
                    {
                        QuestManager.SendMessage(ExitMessageToSend);
                        Debug.Log("SendingExit");
                        NPCQuest = false;
                        SendExitMessage = false;
                    }
                }
            }
        }
        if (NPC == true && Guard == false && NPCQuest == false)
        {
            gameObject.SendMessage("PlayerExit");
        }
        InteractText.text = "";
    }
    public void ThreeVillagersSpoken() 
    {
        WonderingVillagerQuest = false;
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

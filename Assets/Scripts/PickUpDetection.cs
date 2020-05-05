using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PickUpDetection : MonoBehaviour
{
    public string EnterMessageToSend;
    public string ExitMessageToSend;
    public CharacterController PlayerCharacterController;
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
    public bool HasPassed;
    public bool NPCQuest,WonderingVillagerQuest,QuestOnly;
    public Text InteractText;
    public GameObject Player;
    public GameObject QuestManager;
    public AudioSource coinSound;
 
    // Start is called before the first frame update

    private void Start()
    {
        //gets player refrence
        Player = GameObject.Find("Enjo (1)");
    }

    void OnTriggerStay(Collider other)
    {
        //checks if player is in collider
        if (other.gameObject.name == "Enjo (1)")
        {
            if (SendStayMessage == true && Door == false)
            {
                if (other.gameObject.name == "Enjo (1)")
                {
                    other.SendMessage(EnterMessageToSend);
                    if (Input.GetButtonDown("Interact") && Destory == true && Coin == true)
                    {
                        coinSound.Play();

                        Destroy(gameObject);

                    }
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
    }
    void OnTriggerEnter(Collider other)
    {
        //checks if player entered collider
        if (other.gameObject.name == "Enjo (1)")
        {
            if (QuestOnly == true)
            {
                QuestManager.SendMessage("QuestCompleted");
                Destroy(gameObject);
            }
            else
            {
                if (Door == true && TeleportCheck == false && other.gameObject.name == "Enjo (1)")
                {
                    TeleportCheck = true;
                    if (other.gameObject.name == "Enjo (1)")
                    {
                        Debug.LogError("1a");
                        StartCoroutine(Teleport());
                    }
                }

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
        }
    }
    void OnTriggerExit(Collider other)
    {
        //checks if the player exit collider
        if (other.gameObject.name == "Enjo (1)")
        {
            TeleportCheck = false;
            if (SendExitMessage == true)
            {
                if (NPCQuest == false)
                {
                    if (other.gameObject.name == "Enjo (1)")
                    {
                        other.SendMessage(ExitMessageToSend);
                    }
                }
                if (NPCQuest == true)
                {
                    if (HasSpoken == true)
                    {
                        if (other.gameObject.name == "Enjo (1)")
                        {
                            QuestManager.SendMessage(ExitMessageToSend);
                            Debug.Log("SendingExit");
                            NPCQuest = false;
                            SendExitMessage = false;
                        }
                    }
                }
            }
            if (NPC == true && Guard == false && NPCQuest == false && WonderingVillager == true)
            {
                gameObject.SendMessage("PlayerExit");
            }
            InteractText.text = "";
        }
    }
    //for quest villager speeking
    public void ThreeVillagersSpoken() 
    {
        WonderingVillagerQuest = false;
    }
    //teleport timing for shop
    IEnumerator Teleport()
    {
        Player.SendMessageUpwards("CantMove");
        Debug.LogError(Player.name);
        Debug.LogError("1");
        Player.SendMessageUpwards("ApothecaryShop");
        Debug.LogError(Player.name);
        Debug.LogError("2");
        yield return new WaitForSecondsRealtime(0.5f);
        Debug.LogError("3");
        PlayerCharacterController.enabled = false;
        Debug.LogError(PlayerCharacterController.enabled);
        Debug.LogError("4");
        Debug.LogError(TeleportLocation.name);
        Player.transform.position = TeleportLocation.transform.position;
        Debug.LogError("5");
        PlayerCharacterController.enabled = true;
        Debug.LogError(PlayerCharacterController.enabled);
        Debug.LogError("6");
        if (HasPassed == true)
        {
            HasPassed = false;
            QuestManager.SendMessage("QuestCompleted");
        }
        Player.SendMessageUpwards("CanMove");
        Debug.LogError(Player.name);
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class QuestsController : MonoBehaviour
{
    public int QuestNumber;
    public GameObject Player;
    public Charactermanager PlayerRefrence;
    public int[] Potions;

    public Animator QuestText;
    public Text Objective;
    public GameObject[] Border;
    public GameObject[] Guard;
    public GameObject[] VCams;
    public GameObject[] StartingCoins;
    public GameObject[] Villagers;
    public GameObject[] Enemies;
    public GameObject MerchantController;
    public GameObject[] ScareCrowText;
    public GameObject[] OldManIro;
    public GameObject EnjosFather;
    public GameObject UIOveralay;
    public int GrabAmmount, VillagerSpokenAmmount;
    public int CoinAmmount;
    public int ScareCrowValue;
    [SerializeField]
    public int EnemyCount;
    public Text CoinAmmountText;
    public GameObject[] CutSceneCharacters;
    public GameObject[] ToDie;
    public GameObject Dustruction;
    public Animator End;
    public GameObject Ending;
    void Start()
    {
        Villagers = GameObject.FindGameObjectsWithTag("WonderingVillager");
    }
    public void QuestCompleted()
    {
        QuestNumber++;
        StartCoroutine(QuestTextTiming());
    }
    IEnumerator QuestTextTiming()
    {
        switch (QuestNumber)
        {
            case 1:
                Objective.text = "Collect Enjo's property";
                StartingCoins[0].SetActive(true);
                StartingCoins[1].SetActive(true);
                StartingCoins[2].SetActive(true);
                break;
            case 2:
                Player.SendMessage("QuestCompleted");
                QuestText.SetBool("Complete", true);
                yield return new WaitForSeconds(2.2f);
                QuestText.SetBool("Complete", false);
                Player.SendMessage("CantMove");
                Border[0].SetActive(false);
                Border[1].SetActive(true);
                VCams[0].SetActive(false);
                VCams[1].SetActive(false);
                VCams[2].SetActive(true);
                yield return new WaitForSeconds(2);
                Player.SendMessage("CanMove");
                VCams[2].SetActive(false);
                VCams[0].SetActive(true);
                Border[1].SetActive(false);
                Objective.text = "Go to the market";
                break;
            case 3:
                Border[3].SetActive(false);
                Objective.text = "Talk to the guard";
                break;
            case 4:
                Objective.text = "Take-down the scarecrows";
                ScareCrowText[0].SetActive(true);
                ScareCrowText[1].SetActive(true);
                ScareCrowText[2].SetActive(true);
                ScareCrowText[3].SetActive(true);
                ScareCrowText[4].SetActive(true);
                ScareCrowText[5].SetActive(true);
                break;
            case 5:
                QuestText.SetBool("Complete", true);
                ScareCrowText[5].SetActive(true);
                yield return new WaitForSeconds(2.2f);
                Border[2].SetActive(false);
                Border[4].SetActive(false);
                Guard[0].SetActive(false);
                Guard[1].SetActive(true);
                ScareCrowText[5].SetActive(false);
                Objective.text = "Speek to 3 villagers";
                break;
            case 6:
                QuestText.SetBool("Complete", true);
                Border[5].SetActive(false);
                Objective.text = "Vist the Apothecon Shopkeeper";
                break;
            case 7:
                QuestText.SetBool("Complete", false);
                Objective.text = "Buy a Health Potion";
                break;
            case 8:
                QuestText.SetBool("Complete", true);
                EnjosFather.SetActive(true);
                Objective.text = "Leave the Market";
                UIOveralay.SetActive(false);
                Guard[2].SetActive(true);
                Guard[1].SetActive(false);
                Border[8].SetActive(true);
                break;
            case 9:
                QuestText.SetBool("Complete", false);
                QuestText.SetBool("Complete", true);
                Objective.text = "Talk to Enjos father";
                QuestText.SetBool("Complete", true);
                VCams[0].SetActive(false);
                VCams[3].SetActive(true);
                Player.SendMessage("CantMove");
                Border[6].SetActive(false);
                Border[7].SetActive(true);
                yield return new WaitForSeconds(2);
                VCams[0].SetActive(true);
                Player.SendMessage("CanMove");
                VCams[3].SetActive(false);
                QuestText.SetBool("Complete", false);
                QuestText.SetBool("Complete", false);
                QuestText.SetBool("Complete", true);
                yield return new WaitForSeconds(2);
                QuestText.SetBool("Complete", false);
                break;
            case 10:
                Objective.text = "Talk to Old Man Iro";
                PlayerRefrence.PotionAmmountSave.HealthPotion = PlayerRefrence.PotionAmmountSave.HealthPotion - 1;
                PlayerRefrence.Potion_AmmountText[0].text = "Health Potion " + PlayerRefrence.PotionAmmountSave.HealthPotion;
                QuestText.SetBool("Complete", false);
                QuestText.SetBool("Complete", true);
                yield return new WaitForSeconds(2);
                QuestText.SetBool("Complete", false);
                break;
            case 11:
                Objective.text = "Retrieve the Spirit Sword";
                Border[9].SetActive(false);
                Border[10].SetActive(true);
                Player.SendMessage("CantMove");
                VCams[4].SetActive(true);
                VCams[0].SetActive(false);
                EnjosFather.SetActive(false);
                yield return new WaitForSeconds(7);
                VCams[4].SetActive(false);
                VCams[0].SetActive(true);
                Player.SendMessage("CanMove");
                break;
            case 12:
                Objective.text = "Return to Old Man Iro";
                QuestText.SetBool("Complete", false);
                QuestText.SetBool("Complete", true);
                Border[11].SetActive(true);
                break;
            case 13:
                Player.SendMessage("CantMove");
                Objective.text = "Defete the shade klan soldiers";
                VCams[0].SetActive(false);
                VCams[6].SetActive(true);
                CutSceneCharacters[0].SetActive(true);
                CutSceneCharacters[1].SetActive(true);
                yield return new WaitForSeconds(39.85f);
                Border[12].SetActive(true);
                Enemies[0].SetActive(true);
                Enemies[1].SetActive(true);
                Player.SendMessage("CanMove");
                CutSceneCharacters[0].SetActive(false);
                CutSceneCharacters[1].SetActive(false);
                VCams[0].SetActive(true);
                VCams[6].SetActive(false);
                break;
            case 14:
                Objective.text = "Tell your father about the Soldiers";
                OldManIro[0].SetActive(false);
                OldManIro[1].SetActive(true);
                ToDie[0].SetActive(false);
                ToDie[1].SetActive(false);
                ToDie[2].SetActive(false);
                ToDie[3].SetActive(false);
                Dustruction.SetActive(true);
                break;
            case 15:
                Objective.text = "Pick up the map from the notice board";
                Border[13].SetActive(true);
                break;
            case 16:
                Objective.text = "Cross the Hydris Klan Bridge";
                Border[14].SetActive(false);
                Border[15].SetActive(true);
                VCams[0].SetActive(false);
                VCams[5].SetActive(true);
                yield return new WaitForSeconds(7);
                VCams[5].SetActive(false);
                VCams[0].SetActive(true);
                break;
            case 17:
                Player.SendMessage("CantMove");
                Ending.SetActive(true);
                End.SetBool("End", true);
                yield return new WaitForSeconds(13);
                SceneManager.LoadScene("Credits");
                break;
        }
    }

    public void ScareCrow() 
    {
        ScareCrowValue = ScareCrowValue + 1;
        if (ScareCrowValue == 5) 
        {
            QuestCompleted();
        }
    }
    public void Grab()
    {
        GrabAmmount++;
        CoinAmmount = CoinAmmount + 25;
        CoinAmmountText.text = "$ "+ CoinAmmount.ToString();
        if (GrabAmmount == 3)
        {
            QuestCompleted();
        }
    }
    public void VillagerSpeakingAmmount() 
    {
        VillagerSpokenAmmount++;
        if (VillagerSpokenAmmount >= 3) 
        {
            QuestCompleted();
            for (int i = 0; i < Villagers.Length; i++)
            {
                Villagers[i].SendMessage("ThreeVillagersSpoken");
                Debug.Log("3HASPSOEKN");
            }
        }
    }
    public void EnemyKilled() 
    {
        EnemyCount = EnemyCount + 1;
        if (EnemyCount  == 2) 
        {
            QuestCompleted();
        }   
    }
    public void CoinRecall(int NewCointAmmount) 
    {
        CoinAmmount = NewCointAmmount;
        CoinAmmountText.text = "$ " + CoinAmmount.ToString();
    }
    public void GetCoinAmmount() 
    {
        MerchantController.SendMessage("CoinReciver", CoinAmmount);
    }
}

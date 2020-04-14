using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;

public class QuestsController : MonoBehaviour
{
    public int QuestNumber;
    public GameObject Player;
    public int[] Potions;

    public Animator QuestText;
    public Text Objective;
    public GameObject[] Border;
    public GameObject[] Guard;
    public GameObject[] VCams;
    public GameObject[] StartingCoins;
    public GameObject MerchantController;
    public GameObject[] ScareCrowText; 
    public int GrabAmmount;
    public int CoinAmmount;
    public int ScareCrowValue;
    public Text CoinAmmountText;
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
                Border[0].SetActive(false);
                Border[1].SetActive(true);
                VCams[0].SetActive(false);
                VCams[1].SetActive(false);
                VCams[2].SetActive(true);
                yield return new WaitForSeconds(2);
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
    public void GetCoinAmmount() 
    {
        MerchantController.SendMessage("CoinReciver", CoinAmmount);
    }
}

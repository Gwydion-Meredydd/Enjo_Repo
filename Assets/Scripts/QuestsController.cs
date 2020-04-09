using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;

public class QuestsController : MonoBehaviour
{
    public int QuestNumber;
    public GameObject Player;
    public Animator QuestText;
    public Text Objective;
    public GameObject[] Border;
    public GameObject[] Guard;
    public GameObject[] VCams;
    public GameObject MerchantController;
    public int GrabAmmount;
    public int CoinAmmount;
    public int ScareCrowValue;
    public Text CoinAmmountText;
    public void QuestCompleted()
    {
        QuestNumber++;
        Player.SendMessage("QuestCompleted");
        StartCoroutine(QuestTextTiming());

    }
    IEnumerator QuestTextTiming()
    {
        switch (QuestNumber)
        {
            case 1:
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
            case 2:
                QuestText.SetBool("Complete", true);
                yield return new WaitForSeconds(2.2f);
                QuestText.SetBool("Complete", false);
                Border[3].SetActive(false);
                Objective.text = "Take-down the scarecrows";
                break;
            case 3:
                QuestText.SetBool("Complete", true);
                yield return new WaitForSeconds(2.2f);
                Border[4].SetActive(false);
                Guard[0].SetActive(false);
                Guard[1].SetActive(true);
                Objective.text = "Speed to 3 villagers";
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

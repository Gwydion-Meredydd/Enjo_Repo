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
    public GameObject[] VCams;
    public int GrabAmmount;
    public void QuestCompleted()
    {
        QuestNumber++;
        Player.SendMessage("QuestCompleted");
        StartCoroutine(QuestTextTiming());

    }
    IEnumerator QuestTextTiming()
    {
        if (QuestNumber == 1)
        {
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
        }
    }


    public void Grab()
    {
        GrabAmmount++;
        if (GrabAmmount == 3)
        {
            QuestCompleted();
        }
    }
}

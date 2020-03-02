using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;

public class QuestsController : MonoBehaviour
{
    public GameObject Player;
    public Animator QuestText;
    public GameObject[] Border;
    public GameObject[] VCams;
    public int GrabAmmount;
    public void QuestCompleted()
    {
        Player.SendMessage("QuestCompleted");
        StartCoroutine(QuestTextTiming());

    }
    IEnumerator QuestTextTiming()
    {
        QuestText.SetBool("Complete", true);
        yield return new WaitForSeconds(2.2f);
        QuestText.SetBool("Complete",false);
        Border[0].SetActive(false);
        Border[1].SetActive(true);
        VCams[0].SetActive(false);
        VCams[1].SetActive(true);
        yield return new WaitForSeconds(1);
        VCams[1].SetActive(false);
        Border[1].SetActive(false);
    }


    public void Grab()
    {
        GrabAmmount ++;
        if (GrabAmmount == 3)
        {
            QuestCompleted();
        }
    }
}

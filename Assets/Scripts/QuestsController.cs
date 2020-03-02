using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using UnityEngine.UI;

public class QuestsController : MonoBehaviour
{
    public GameObject Player;
    public Animation QuestText;
    public int GrabAmmount;
    public void QuestCompleted()
    {
        Player.SendMessage("QuestCompleted");
        QuestText.Play;
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
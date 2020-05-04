using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sword : MonoBehaviour
{
    public GameObject Lava;
    public GameObject QuestController;
    public GameObject Player;
    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            QuestController.SendMessage("QuestCompleted");
            Lava.SendMessage("NewRestPoint");
            Player.SendMessage("SwordPickedUp");
            Destroy(gameObject);
        }
    }
}

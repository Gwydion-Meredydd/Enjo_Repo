using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Sword : MonoBehaviour
{
    //sword pickup controller , lets the player pickup sword
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

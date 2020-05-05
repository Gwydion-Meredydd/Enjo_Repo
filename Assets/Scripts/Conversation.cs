using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Conversation : MonoBehaviour
{
    public ConversationContex Dialouge;
    public AudioSource voiceSound;

    public void ConversationTrigger() //is called by collision or trigger event, starts conversation with npc
    {
        FindObjectOfType<ConversationManger>().StartDialouge(Dialouge);
        voiceSound.Play();
    }
}

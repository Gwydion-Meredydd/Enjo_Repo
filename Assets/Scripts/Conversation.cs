using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Conversation : MonoBehaviour
{
    public ConversationContex Dialouge;
    public AudioSource voiceSound;

    private void Start()
    {

    }
    public void ConversationTrigger() 
    {
        FindObjectOfType<ConversationManger>().StartDialouge(Dialouge);
        voiceSound.Play();
    }
}

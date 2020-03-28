using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Conversation : MonoBehaviour
{
    public ConversationContex Dialouge;
    
    public void ConversationTrigger() 
    {
        FindObjectOfType<ConversationManger>().StartDialouge(Dialouge);
    }
}

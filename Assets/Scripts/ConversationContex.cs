using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class ConversationContex
{
    //class for creating easy npc chat
    public string name;


    [TextArea(1, 10)]
    public string[] sentences;
}

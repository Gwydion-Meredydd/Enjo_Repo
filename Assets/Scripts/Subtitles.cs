using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Subtitles : MonoBehaviour
{
    public GameObject textBox;
    public GameObject enjo;
    void Start()
    {
        StartCoroutine(subSequence());
    }

    IEnumerator subSequence()
    {
        yield return new WaitForSeconds(7);
        enjo.SendMessage("ConversationTrigger");
    }
}

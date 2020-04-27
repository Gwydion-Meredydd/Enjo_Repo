using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class Subtitles : MonoBehaviour
{
    public GameObject textBox;
    public GameObject enjo;
    public float WaitTime;
    void Start()
    {
        StartCoroutine(subSequence());
    }

    IEnumerator subSequence()
    {
        yield return new WaitForSeconds(WaitTime);
        enjo.SendMessage("ConversationTrigger");
    }
}

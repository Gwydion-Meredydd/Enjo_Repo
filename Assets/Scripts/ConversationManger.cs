using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Cinemachine;

public class ConversationManger : MonoBehaviour
{
    public Text NameText;
    public Text DialougeText;
    public Animator animator;
    public GameObject Player;
    Queue <string> sentences;
    // Start is called before the first frame update
    void Start()
    {
        sentences = new Queue<string>();
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Return))
        {
            DisplayNextSentance();
        }
    }

    // Update is called once per frame
    public void StartDialouge(ConversationContex Dialouge) 
    {
        Player.SendMessage("CantMove");
        animator.SetBool("OnScreen", true);
        NameText.text = Dialouge.name;
        sentences.Clear();
        foreach (string sentence in Dialouge.sentences) 
        {
            sentences.Enqueue(sentence);
        }
        DisplayNextSentance();
    }
    public void DisplayNextSentance()
    {
        if (sentences.Count == 0) 
        
        {
            EndDialouge();
            return;
        }
        string sentence = sentences.Dequeue();
        DialougeText.text = sentence;
        StopAllCoroutines();
        StartCoroutine(TypeSentence(sentence));
    }
    IEnumerator TypeSentence (string sentence) 
    {
        DialougeText.text = "";
        foreach (char letter in sentence.ToCharArray()) 
        {
            DialougeText.text += letter;
            yield return null;
        }
    }
    void EndDialouge() 
    {
        animator.SetBool("OnScreen", false);
        Player.SendMessage("CanMove");
    }
}

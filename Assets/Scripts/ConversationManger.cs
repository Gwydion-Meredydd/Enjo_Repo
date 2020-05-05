using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Cinemachine;

public class ConversationManger : MonoBehaviour
{
    //this script allows for the letters to appear as they where being typed 
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
    //method called when dialouge started using trigger, using conversation class to function
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
    //dispalys the next sentance
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
    //makes letters appear in sequance
    IEnumerator TypeSentence (string sentence) 
    {
        DialougeText.text = "";
        foreach (char letter in sentence.ToCharArray()) 
        {
            DialougeText.text += letter;
            yield return null;
        }
    }
    //removes dialouge npc
    void EndDialouge() 
    {
        animator.SetBool("OnScreen", false);
        Player.SendMessage("CanMove");
    }
}

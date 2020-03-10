using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PickUpDetection : MonoBehaviour
{
    public string EnterMessageToSend;
    public string ExitMessageToSend;
    public bool Destory;
    public bool Door;
    public Transform TeleportLocation;
    public bool SendStayMessage;
    public bool SendExitMessage;
    // Start is called before the first frame update
    void OnTriggerStay(Collider other)
    {
        if (SendStayMessage == true && Door == false)
        {
            if (other.gameObject.tag == "Player")
            {
                other.SendMessage(EnterMessageToSend);
                if (Input.GetButtonDown("Interact") && Destory == true)
                {
                    Destroy(gameObject);
                }
            }
        }
        if (Door == true)
        {
            if (other.gameObject.tag == "Player")
            {
                Debug.Log("!");
                Debug.Log(other);
                other.transform.position = TeleportLocation.localPosition;
            }
        }
    }
    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "Player")
        {

            other.SendMessage(EnterMessageToSend);


        }
    }
    void OnTriggerExit(Collider other)
    {
        if (SendExitMessage == true)
        {
            if (other.gameObject.tag == "Player")
            {
                other.SendMessage(ExitMessageToSend);
            }
        }
    }
}

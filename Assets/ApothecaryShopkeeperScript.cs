using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ApothecaryShopkeeperScript : MonoBehaviour
{
    public Text PopUpText;
    public GameObject ShopUI;
    public GameObject Player;
    public bool InCollider = false;
    public bool InMenu = false;

    // Start is called before the first frame update

    private void Update()
    {
        if (InMenu == true)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        else if (InCollider == true)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
    }
    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            InCollider = true;
            PopUpText.text = "Press E to Shop";
            if (Input.GetButtonDown("Interact"))
            {
                if (InMenu == false)
                {
                    ShopUI.SetActive(true);
                    Player.SendMessage("CantMove");
                    InMenu = true;
                }
                else
                {
                    InMenu = false;
                    Player.SendMessage("CanMove");
                    ShopUI.SetActive(false);
                }
            }
        }
    }
    void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            PopUpText.text = "";
            InCollider = false;
        }
    }
}

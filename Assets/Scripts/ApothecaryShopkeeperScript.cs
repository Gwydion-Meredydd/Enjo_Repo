using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ApothecaryShopkeeperScript : MonoBehaviour
{
    public Text PopUpText;
    public GameObject ShopUI;
    public GameObject Player;
    public GameObject QuestController;
    public bool InCollider = false;
    public bool InMenu = false;

    // Start is called before the first frame update

    private void Update()
    {
        //checks if the menu is active
        if (InMenu == true)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
        }
        //checks if the player is in collison
        else if (InCollider == true)
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
        }
    }
    void OnTriggerStay(Collider other)
    {//checks to see if the player has collided
        if (other.gameObject.tag == "Player")
        {
            InCollider = true;
            PopUpText.text = "Press E to Shop";//changes interaction text
            if (Input.GetButtonDown("Interact"))
            {
                if (InMenu == false)
                {
                    ShopUI.SetActive(true);//turns on shop ui
                    QuestController.SendMessage("GetCoinAmmount");
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
    {//checks if player exit
        if (other.gameObject.tag == "Player")
        {
            PopUpText.text = "";
            InCollider = false;
        }
    }
    public void MarchantUIOff() 
    {//turns off shop ui
        InMenu = false;
        Player.SendMessage("CanMove");
        ShopUI.SetActive(false);
    }
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ApothecaryShopkeeperScript : MonoBehaviour
{
    public Text PopUpText;
    public GameObject ShopUI;
    // Start is called before the first frame update
    void OnTriggerStay(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            PopUpText.text = "Press E to Shop";
            if (Input.GetButtonDown("Interact"))
            {
                ShopUI.SetActive(true);
            }
        }
    }
}

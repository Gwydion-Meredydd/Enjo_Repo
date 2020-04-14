using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MerchantManager : MonoBehaviour
{
    public int Coin_Ammount;
    public GameObject QuestManager;
   public void HealthPotion() 
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount <= 60)
        {

        }
    }
    public void ShieldPotion() 
    {

    }
    public void ManaPotion() 
    {

    }
    public void JumpPotion() 
    {

    }
    public void SpeedPotion() 
    {

    }
    public void StrengthPotion() 
    {

    }
    public void CoinReciver(int CoinAmmount) 
    {
        Coin_Ammount = CoinAmmount;
    }
}

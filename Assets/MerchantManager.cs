using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MerchantManager : MonoBehaviour
{
    public int CoinValue;
    public GameObject QuestManager;
   public void HealthPotion() 
    {
        QuestManager.SendMessage("GetCoinAmmount");
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
        CoinValue = CoinAmmount;
    }
}

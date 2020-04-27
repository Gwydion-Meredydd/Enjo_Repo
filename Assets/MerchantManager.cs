using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MerchantManager : MonoBehaviour
{
    public int Coin_Ammount;
    public GameObject QuestManager;
    public PotionsClass PotionAmmountSave;
    public void HealthPotion() 
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount <= 60)
        {
            PotionAmmountSave.HealthPotion = PotionAmmountSave.HealthPotion + 1;
        }
    }
    public void ShieldPotion() 
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount <= 60)
        {
            PotionAmmountSave.ShieldPotion = PotionAmmountSave.ShieldPotion + 1; 
        }
    }
    public void ManaPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount <= 120)
        {
            PotionAmmountSave.ManaPotion = PotionAmmountSave.ManaPotion + 1;
        }
    }
    public void JumpPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount <= 60)
        {
            PotionAmmountSave.JumpPotion = PotionAmmountSave.JumpPotion + 1;
        }
    }
    public void SpeedPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount <= 60)
        {
            PotionAmmountSave.SpeeedPotion = PotionAmmountSave.SpeeedPotion + 1;
        }
    }
    public void StrengthPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount <= 60)
        {
            PotionAmmountSave.StrengthPotion = PotionAmmountSave.StrengthPotion + 1;
        }
    }
    public void CoinReciver(int CoinAmmount) 
    {
        Coin_Ammount = CoinAmmount;
    }
    public void MechantExit() 
    {
        Debug.Log("Off");
        gameObject.SetActive(false);
    }
}

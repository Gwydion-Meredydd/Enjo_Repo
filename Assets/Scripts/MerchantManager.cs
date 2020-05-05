using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class MerchantManager : MonoBehaviour
{
    public int Coin_Ammount;
    public bool HasBoughtPotion;
    public Text CoinAmmountText;
    public GameObject QuestManager;
    public GameObject ApothogoneShopkeeper;
    public PotionsClass PotionAmmountSave;
    public Charactermanager CharacterRefrence;
    public Text[] PotionAmmountText;
    public void HealthPotion() 
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount >= 60)
        {
            if (HasBoughtPotion == false) 
            {
                QuestManager.SendMessage("QuestCompleted");
                HasBoughtPotion = true;
            }
            CharacterRefrence.PotionAmmountSave.HealthPotion = CharacterRefrence.PotionAmmountSave.HealthPotion + 1;
            Coin_Ammount = Coin_Ammount - 60;
            PotionAmmountText[0].text = "Health Potion " + CharacterRefrence.PotionAmmountSave.HealthPotion.ToString();
            CoinRecall();
        }
    }
    public void ShieldPotion() 
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount >= 60)
        {
            CharacterRefrence.PotionAmmountSave.ShieldPotion = CharacterRefrence.PotionAmmountSave.ShieldPotion + 1;
            Coin_Ammount = Coin_Ammount - 60;
            PotionAmmountText[1].text = "Shield Potion " + CharacterRefrence.PotionAmmountSave.ShieldPotion.ToString();
            CoinRecall();
        }
    }
    public void ManaPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount >= 120)
        {
            CharacterRefrence.PotionAmmountSave.ManaPotion = CharacterRefrence.PotionAmmountSave.ManaPotion + 1;
            Coin_Ammount = Coin_Ammount - 120;
            PotionAmmountText[2].text = "Mana Potion " + CharacterRefrence.PotionAmmountSave.ManaPotion.ToString();
            CoinRecall();
        }
    }
    public void JumpPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount >= 60)
        {
            CharacterRefrence.PotionAmmountSave.JumpPotion = CharacterRefrence.PotionAmmountSave.JumpPotion + 1;
            Coin_Ammount = Coin_Ammount - 60;
            PotionAmmountText[3].text = "Jump Potion " + CharacterRefrence.PotionAmmountSave.JumpPotion.ToString();
            CoinRecall();
        }
    }
    public void SpeedPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount >= 60)
        {
            CharacterRefrence.PotionAmmountSave.SpeeedPotion = CharacterRefrence.PotionAmmountSave.SpeeedPotion + 1;
            Coin_Ammount = Coin_Ammount - 60;
            PotionAmmountText[4].text = "Speed Potion " + CharacterRefrence.PotionAmmountSave.SpeeedPotion.ToString();
            CoinRecall();
        }
    }
    public void StrengthPotion()
    {
        QuestManager.SendMessage("GetCoinAmmount");
        if (Coin_Ammount >= 60)
        {
            CharacterRefrence.PotionAmmountSave.StrengthPotion = CharacterRefrence.PotionAmmountSave.StrengthPotion + 1;
            Coin_Ammount = Coin_Ammount - 60;
            PotionAmmountText[5].text = "Strength Potion " + CharacterRefrence.PotionAmmountSave.StrengthPotion.ToString();
            CoinRecall();
        }
    }
    public void CoinRecall() 
    {
        QuestManager.SendMessage("CoinRecall", Coin_Ammount);
        CoinAmmountText.text = Coin_Ammount.ToString();
    }
    public void CoinReciver(int CoinAmmount) 
    {
        Coin_Ammount = CoinAmmount;
        CoinAmmountText.text = Coin_Ammount.ToString();
    }
    public void Exit() 
    {
        ApothogoneShopkeeper.SendMessage("MarchantUIOff");
    }
}

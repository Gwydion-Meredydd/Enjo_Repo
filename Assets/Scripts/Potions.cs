using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
 
 public class Potions : MonoBehaviour
{
    //public system for potions is used by merchant script and player script to accsess potions ammount save
    public GameObject Player;

    public void HealthPotion() 
    {
        Player.SendMessage("PotionSelected", 1);
    }
    public void ManaPotion() 
    {
        Player.SendMessage("PotionSelected", 2);
    }
    public void ShieldPotion() 
    {
        Player.SendMessage("PotionSelected", 3);
    }
    public void JumpPotion() 
    {
        Player.SendMessage("PotionSelected", 4);
    }
    public void SpeedPotion() 
    {
        Player.SendMessage("PotionSelected", 5);
    }
    public void StrengthPotion() 
    {
        Player.SendMessage("PotionSelected", 6);
    }
}

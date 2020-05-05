using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CutsceneTime : MonoBehaviour
{
    //cutscene controller allows the player to not move whilst playing
    public GameObject Player;
    public float WaitTime;
    // Start is called before the first frame update
    void Start()
    {
        StartCoroutine(CutsceneTiming());
    }

    IEnumerator CutsceneTiming()
    {
        Player.SendMessage("CantMove");
        yield return new WaitForSeconds(WaitTime);
        Player.SendMessage("CanMove");

    }
}

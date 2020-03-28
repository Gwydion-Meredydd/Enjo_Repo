using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CutsceneTime : MonoBehaviour
{
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

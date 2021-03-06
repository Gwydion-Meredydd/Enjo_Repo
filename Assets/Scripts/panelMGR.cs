﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class panelMGR : MonoBehaviour
{
    //panels controller for intro allows for intro panels to fade in on click
    public int clicking;

    [Header("Boards")]
    public GameObject boardOne;
    public GameObject boardTwo;
    public GameObject boardThree;
    public GameObject boardFour;
    public GameObject boardFive;
    public GameObject boardSix;
    public GameObject boardSeven;
    public GameObject boardEight;
    public GameObject boardNine;
    public GameObject boardTen;
    public GameObject boardEleven;
    public GameObject boardTwelve;
    public GameObject TitleScreen;
    public Animator[] fadeAnim;
    public Animator MusicAnimator;

    void Start()
    {
        clicking = 1;
        ClickMethod();
    }

    void Update()
    {
        if (Input.GetButtonDown("Fire1"))
        {
            if (clicking < 14)
           {
                ClickMethod();
                fadeAnim[clicking].SetBool("Fade", true);
           }
        }
    }
    public void ClickMethod()
    {
        if (clicking == 1)
        {
            boardOne.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 2)
        {
            boardOne.SetActive(false);

            boardTwo.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 3)
        {
            boardThree.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 4)
        {
            boardFour.SetActive(true);
            clicking = clicking + 1;
            Debug.Log(clicking);

        }

        else if (clicking == 5)
        {
            boardFive.SetActive(true);

            boardTwo.SetActive(false);
            boardThree.SetActive(false);
            boardFour.SetActive(false);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 6)
        {
            boardFive.SetActive(false);

            boardSix.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 7)
        {
            boardSeven.SetActive(true);

            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 8)
        {
            boardSix.SetActive(false);
            boardSeven.SetActive(true);

            boardEight.SetActive(false);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 9)
        {
            boardSeven.SetActive(false);
            boardEight.SetActive(false);

            boardNine.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 10)
        {
            boardTen.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 11)
        {
            boardNine.SetActive(false);
            boardTen.SetActive(false);

            boardEleven.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }

        else if (clicking == 12)
        {
            boardEleven.SetActive(false);

            boardTwelve.SetActive(true);
            clicking = clicking + 1;

            Debug.Log(clicking);
        }
        else if (clicking == 13)
        {
            TitleScreen.SetActive(true);
            StartCoroutine(TitleTiming());
        }
    }
    IEnumerator TitleTiming()
    {
        MusicAnimator.SetBool("End", true);
        yield return new WaitForSeconds(14.5f);
        SceneManager.LoadScene(3);
    }
}

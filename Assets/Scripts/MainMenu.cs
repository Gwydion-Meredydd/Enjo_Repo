using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class MainMenu : MonoBehaviour
{
    public Animator CameraAnimator;
    public void Play()
    {
        SceneManager.LoadScene(2);
    }
    public void Instructions() 
    {
        CameraAnimator.SetBool("Instructions", true);
    }
    public void Settings() 
    {
        CameraAnimator.SetBool("Settings", true);
    }
    public void Credits() 
    {
        SceneManager.LoadScene(1);
    }
    public void Exit() 
    {
        CameraAnimator.SetBool("Exit", true);
    }
    public void ExitReturn()
    {
        CameraAnimator.SetBool("Exit", false);
    }
    public void Return() 
    {
        CameraAnimator.SetBool("Instructions", false);
        CameraAnimator.SetBool("Settings", false);
        CameraAnimator.SetBool("Exit", false);
    }

}

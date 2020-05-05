using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.Audio;
public class MainMenu : MonoBehaviour
{
    public Animator CameraAnimator;
    public AudioMixer Mixer;
    public GameObject ToggleGameObject;
    public bool isCredits;

    public void Start()
    {
        Screen.SetResolution(1920, 1080, true);
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;
        if (isCredits == true) 
        {//credits timing for seen return
            StartCoroutine(CreditsTiming());
        }

    }
    public void Play()
    {//loads level
        SceneManager.LoadScene(2);
    }
    //camera operators
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
    public void ExitYes()
    {
        Application.Quit();
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
    public void CreditsReturn()
    {
        SceneManager.LoadScene(0);
    }
    //audio settings
    public void MasterSliderValue(float sliderValue)
    {
        Mixer.SetFloat("Master", Mathf.Log10(sliderValue) * 20);
    }
    public void EnemySliderValue(float sliderValue)
    {
        Mixer.SetFloat("Enemy", Mathf.Log10(sliderValue) * 20);
    }
    public void MusicSliderValue(float sliderValue)
    {
        Mixer.SetFloat("Music", Mathf.Log10(sliderValue) * 20);
    }
    public void PlayerSliderValue(float sliderValue)
    {
        Mixer.SetFloat("Player", Mathf.Log10(sliderValue) * 20);
    }
    public void VillagerSliderValue(float sliderValue)
    {
        Mixer.SetFloat("Villager", Mathf.Log10(sliderValue) * 20);
    }
    public void WorldSliderValue(float sliderValue)
    {
        Mixer.SetFloat("World", Mathf.Log10(sliderValue) * 20);
    }
    //graphics settings had to be removed due to build problems
    public void DropDown(int value)
    {
        if (value == 0)
        {
            QualitySettings.SetQualityLevel(1);
        }
        if (value == 1)
        {
            QualitySettings.SetQualityLevel(2);
        }
        if (value == 2)
        {
            QualitySettings.SetQualityLevel(3);
        }
        if (value == 3)
        {
            QualitySettings.SetQualityLevel(4);
        }
        if (value == 4)
        {
            QualitySettings.SetQualityLevel(5);
        }
        if (value == 5)
        {
            QualitySettings.SetQualityLevel(6);
        }

    }
    //fullscreen mode had to be mandatory due to build issues 
    public void ScreenChange()
    {
        bool ToggleSwitch = ToggleGameObject.GetComponent<Toggle>().isOn;
        if (ToggleSwitch)
        {
            Screen.fullScreen = true;
        }
        else
        {
            Screen.fullScreen = false;
        }
    }

    IEnumerator CreditsTiming()
    {
        yield return new WaitForSeconds(140f);
        SceneManager.LoadScene(0);


    }
}
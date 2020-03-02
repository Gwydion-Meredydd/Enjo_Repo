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
    
    public void Start()
    {
        Screen.SetResolution(1920, 1080, true);
    }
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

}

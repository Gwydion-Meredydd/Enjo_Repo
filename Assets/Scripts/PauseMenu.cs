using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.Audio;

public class PauseMenu : MonoBehaviour
{
    public GameObject PauseMenu_;
    public AudioMixer MainMixer;
    public bool PauseMenuOn;
    // Start is called before the first frame update

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            if (PauseMenuOn == false)
            {
                PauseMenu_On();
            }
            else 
            {
                PauseMenu_Off();
            }
        }
    }
    public void PauseMenu_On() 
    {
        PauseMenuOn = true;
        Time.timeScale = 0;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
        PauseMenu_.SetActive(true);
    }
    public void PauseMenu_Off()
    {
        PauseMenuOn = false;
        Time.timeScale = 1;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        PauseMenu_.SetActive(false);
    }
    public void Quit() 
    {
        Time.timeScale = 1;
        SceneManager.LoadScene("MainMenu");
    }
    public void MasterSliderValue(float sliderValue)
    {
        MainMixer.SetFloat("Master", Mathf.Log10(sliderValue) * 20);
    }
    public void MusicSliderValue(float sliderValue)
    {
        MainMixer.SetFloat("Music", Mathf.Log10(sliderValue) * 20);
    }
    public void OtherSliderValue(float sliderValue)
    {
        MainMixer.SetFloat("Enemy", Mathf.Log10(sliderValue) * 20);
        MainMixer.SetFloat("Player", Mathf.Log10(sliderValue) * 20);
        MainMixer.SetFloat("Villager", Mathf.Log10(sliderValue) * 20);
        MainMixer.SetFloat("World", Mathf.Log10(sliderValue) * 20);
    }

}

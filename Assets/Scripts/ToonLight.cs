using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ToonLight : MonoBehaviour
{
    //allows for cell shaded look of the game 
    private Light light = null;

    private void OnEnable()
    {
        light = this.GetComponent<Light>();
    }

    private void Update()
    {
        Shader.SetGlobalVector("LightDirection", -this.transform.forward);
    }
}

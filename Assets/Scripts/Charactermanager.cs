﻿
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Cinemachine;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class Charactermanager : MonoBehaviour
{
    public GameObject Player;
    private float InputX, InputZ, InputSprint, Speed, OriginalSpeed;
    public CinemachineVirtualCamera ThirdPersonCamera;
    private Camera Cam;
    private CharacterController character_Controller;
    private bool CanJump,ShopTeleporting = false, isPickingUp = false;
    public Text PickupText;

    private Vector3 DisiredMoveDirection;

    [SerializeField] GameObject QuestManger;
    [SerializeField] Animator CharacterAnimator;
    [Range(0.001f, 1f)]
    [SerializeField] float RotationSpeed = 0.3f;
    [SerializeField] float AllowRotation = 0.1f;
    [SerializeField] float movementSpeed = 4f;
    [SerializeField] float SprintSpeed = 3f;
    [SerializeField] float JumpSpeed = 5f;
    [SerializeField] float gravity;
    [SerializeField] bool MoveOveride;
    public  GameObject ShopLocationsEnter;
    public GameObject ShopLocationsExit;
    public Animator TransitionController;
    // Start is called before the first frame update
    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        CharacterAnimator = gameObject.GetComponent<Animator>();
        character_Controller = GetComponent<CharacterController>();
        Cam = Camera.main;
        OriginalSpeed = movementSpeed;
    }

    // Update is called once per frame
    void Update()
    {
        InputX = Input.GetAxis("Horizontal");
        InputZ = Input.GetAxis("Vertical");
        InputSprint = Input.GetAxis("Fire3");

        if (MoveOveride == false)
        {
            InputDecider();
            MovementManger();
        }
    }
    void InputDecider()
    {
        
        Speed = new Vector2(InputX, InputZ).sqrMagnitude;
        if (InputSprint == 1) 
        {
            movementSpeed = SprintSpeed;
            CharacterAnimator.SetBool("Run", true);
        }
        else 
        {
            movementSpeed = OriginalSpeed;
            CharacterAnimator.SetBool("Run", false);
        }
        if (Speed > AllowRotation)
        {
            RotationManager();
        }
        else 
        {
            DisiredMoveDirection = Vector3.zero;
        }
    }
    void RotationManager()
    {
        var forward = Cam.transform.forward;
        var right = Cam.transform.right;

        forward.y = 0;
        right.y = 0;

        forward.Normalize();
        right.Normalize();

        DisiredMoveDirection = forward * InputZ + right * InputX;

        transform.rotation = Quaternion.Slerp(transform.rotation, Quaternion.LookRotation(DisiredMoveDirection), RotationSpeed);
    }
    void MovementManger() 
    {
        gravity -= 2.5f * Time.deltaTime;
        CharacterAnimator.SetFloat("X_Input", Speed);
        Vector3 moveDirection = DisiredMoveDirection * (movementSpeed * Time.deltaTime);
        moveDirection = new Vector3(moveDirection.x, gravity, moveDirection.z);

        character_Controller.Move(moveDirection);

        if (character_Controller.isGrounded) 
        {
            //gravity = 0;
            if (Input.GetButtonDown("Jump"))
            {
                CharacterAnimator.SetBool("PreJump", true);
            }
            if (Input.GetButtonUp("Jump"))
            {
                if (CanJump == true)
                {
                    CharacterAnimator.SetBool("PreJump", false);
                    CharacterAnimator.SetBool("Jump", true);
                    gravity = JumpSpeed;
                }
                if (CanJump == false) 
                {
                    CharacterAnimator.SetBool("PreJump", false);
                    CharacterAnimator.SetBool("Jump", false);
                }
            }
            else if (character_Controller.isGrounded)
            {
                JumpOff();
            }
        }
        if (Input.GetButtonDown("Jump"))
        {
            CharacterAnimator.SetBool("PreJump", true);
        }
        if (Input.GetButtonDown("Fire1"))
        {
            CharacterAnimator.SetBool("PreJump", true);
        }
        if (Input.GetButtonUp("Fire1"))
        {
            CharacterAnimator.SetBool("PreJump", false);
        }
    }
    public void JumpEvent() 
    {
        CanJump = true;
    }
    public void JumpEventOff()
    {
        CanJump = false;
        CharacterAnimator.SetBool("Jump", false);
        gravity = 0;
    }
    public void CanGrab()
    {
        PickupText.text = "Press 'E' to pickup item!";
        if (Input.GetButtonDown("Interact")&& isPickingUp == false)
        {
            MoveOveride = true;
            isPickingUp = true;
            PickupText.text = "You Collected a coin!";
            CharacterAnimator.SetBool("Grab", true);
            QuestManger.SendMessage("Grab");
            StartCoroutine(TextPickupTimer());
        }
    }
    public void QuestReached() 
    {
        QuestManger.SendMessage("QuestCompleted");
    }
    public void CantGrab() 
    {
        PickupText.text = "";
    }
    public void CanMove()
    {
        MoveOveride = false;
    }
    public void CantMove()
    {
        MoveOveride = true;
        CharacterAnimator.SetBool("Run", false);
        CharacterAnimator.SetBool("Jump", false);
        CharacterAnimator.SetFloat("X_Input", 0);
        CharacterAnimator.SetFloat("Y_Input", 0);
    }
    public void ApothecaryShop()
    {
        if (ShopTeleporting == false)
        {
            ShopTeleporting = true;
            TransitionController.SetBool("CircleTransition", true);
            StartCoroutine(ApothecaryShopTiming());
            ShopTeleporting = false;
        }
    }
    IEnumerator ApothecaryShopTiming()
    {
        yield return new WaitForSeconds(1f);
        TransitionController.SetBool("CircleTransition", false);
    }
   
    public void QuestCompleted()
    {
        MoveOveride = true;
        CharacterAnimator.SetBool("Celebrate", true);
        StartCoroutine(CelebrationTiming());

    }
    IEnumerator ShopExit()
    {
        Debug.Log("Exit");
        TransitionController.SetBool("CircleTransition", true);
        yield return new WaitForSeconds(1f);
        TransitionController.SetBool("CircleTransition", false);
        ShopTeleporting = false;
    }
    IEnumerator CelebrationTiming()
    {
        yield return new WaitForSeconds(1.5f);
        CharacterAnimator.SetBool("Celebrate",false);
        MoveOveride = false;
    }
    void JumpOff() 
    {
        if (gravity < 0)
        {
            gravity = 0;
        }
    }
    IEnumerator TextPickupTimer()
    {
        yield return new WaitForSeconds(1.5f);
        CharacterAnimator.SetBool("Grab", false);
        MoveOveride = false;
        yield return new WaitForSeconds(1);
        PickupText.text = "";
        isPickingUp = false;

    
    }
}

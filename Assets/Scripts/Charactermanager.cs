
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Cinemachine;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class Charactermanager : MonoBehaviour
{
    public bool DeveloperMode;
    public GameObject Player;
    private float InputX, InputZ, InputSprint, Speed, OriginalSpeed;
    public CinemachineVirtualCamera ThirdPersonCamera;
    private Camera Cam;
    private CharacterController character_Controller;
    private bool CanJump, ShopTeleporting = false, isPickingUp = false;
    public Text PickupText;

    public PotionsClass PotionAmmountSave;

    private Vector3 DisiredMoveDirection;

    [SerializeField] GameObject QuestManger, PotionsUI;
    [SerializeField] Animator CharacterAnimator;
    [Range(0.001f, 1f)]
    [SerializeField] float RotationSpeed = 0.3f;
    [SerializeField] float AllowRotation = 0.1f;
    [SerializeField] float movementSpeed = 4f;
    [SerializeField] float SprintSpeed = 3f;
    [SerializeField] float JumpSpeed = 5f;
    [SerializeField] float gravity;
    [SerializeField] bool MoveOveride, Moving, CanSprint = true;
    public GameObject ShopLocationsEnter;
    public GameObject ShopLocationsExit;
    public Animator TransitionController;
    [Header("Fists")]
    public GameObject[] PlayerHitColliders;
    [Header("Sword")]
    public GameObject[] SwordHitColliders;
    public int HitAmmount;
    public bool Attacking;
    public float Health;
    public float Shield;
    public float Mana;
    public int HitMultiplier;
    public GameObject Bottle;
    public bool Potion;
    public int Potion_Ammount;
    public Text[] Potion_AmmountText;
    public Slider HealthBar, ManaBar, ShieldBar;
    // Start is called before the first frame update
    void Start()
    {
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;
        CharacterAnimator = gameObject.GetComponent<Animator>();
        character_Controller = GetComponent<CharacterController>();
        Cam = Camera.main;
        OriginalSpeed = movementSpeed;
        HealthBar.value = Health;
        ManaBar.value = Mana;
        ShieldBar.value = Shield;
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
        if (InputSprint == 1 && CanSprint == true)
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
            CharacterAnimator.SetBool("Jump", false);
            if (Input.GetButtonUp("Jump"))
            {
                CharacterAnimator.SetBool("Jump", false);
                if (Moving == false)
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
            }
            else if (character_Controller.isGrounded)
            {
                JumpOff();
            }
        }
        if (Input.GetButtonDown("Jump") && character_Controller.isGrounded)
        {
            if (Moving == false)
            {
                CharacterAnimator.SetBool("PreJump", true);
            }
            if (Moving == true)
            {
                CharacterAnimator.SetBool("Jump", true);
                gravity = JumpSpeed;
            }
        }
        if (Input.GetButtonDown("ctrl"))
        {
            CharacterAnimator.SetBool("PreJump", true);
        }
        if (Input.GetButtonUp("ctrl"))
        {
            CharacterAnimator.SetBool("PreJump", false);
        }
        if (Input.GetButtonDown("Potion"))
        {
            if (Potion == false)
            {
                Time.timeScale = 0.25f;
                Cursor.lockState = CursorLockMode.None;
                PotionsUI.SetActive(true);
                Cursor.visible = true;
                CantMove();
            }
        }
        if (Input.GetButtonUp("Potion"))
        {
            Time.timeScale = 1f;
            PotionsUI.SetActive(false);
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            CanMove();
        }
        if (InputZ != 0 || InputX != 0)
        {
            Moving = true;
        }
        else
        {
            Moving = false;
        }
        if (Input.GetButtonDown("Fire1"))
        {
            Attacking = true;
            CharacterAnimator.SetBool("Attack", true);
            CanSprint = false;
        }
        if (Input.GetButtonUp("Fire1"))
        {
            Attacking = false;
            CharacterAnimator.SetBool("Attack", false);
            CanSprint = true;
            movementSpeed = OriginalSpeed;
            CharacterAnimator.SetBool("Run", false);
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
    public void PotionAmmount(int PotionValue)
    {
        Potion_Ammount = PotionValue;
        switch (PotionValue)
        {
            case 1:
                Potion_Ammount = PotionAmmountSave.HealthPotion;
                Potion_AmmountText[(PotionValue - 1)].text = ("Health Potion " + Potion_Ammount.ToString());
                break;
            case 2:
                Potion_Ammount = PotionAmmountSave.ManaPotion;
                Potion_AmmountText[(PotionValue - 1)].text = ("Mana Potion " + Potion_Ammount.ToString());
                break;
            case 3:
                Potion_Ammount = PotionAmmountSave.ShieldPotion;
                Potion_AmmountText[(PotionValue - 1)].text = ("Shield Potion " + Potion_Ammount.ToString());
                break;
            case 4:
                Potion_Ammount = PotionAmmountSave.JumpPotion;
                Potion_AmmountText[(PotionValue - 1)].text = ("Jump Potion " + Potion_Ammount.ToString());
                break;
            case 5:
                Potion_Ammount = PotionAmmountSave.SpeeedPotion;
                Potion_AmmountText[(PotionValue - 1)].text = ("Speed Potion " + Potion_Ammount.ToString());
                break;
            case 6:
                Potion_Ammount = PotionAmmountSave.StrengthPotion;
                Potion_AmmountText[(PotionValue - 1)].text = ("Strength Potion " + Potion_Ammount.ToString());
                break;
        }
        if (DeveloperMode == true) 
        {
            Potion_Ammount =  1;
        }
    }
    public void SetPotionAmmount(int Potion_Value)
    {
        if (DeveloperMode == true)
        {
            Potion_Ammount = Potion_Ammount + 1;
        }
        switch (Potion_Value)
        {

            case 1:
                PotionAmmountSave.HealthPotion = Potion_Ammount;
                Potion_AmmountText[(Potion_Value - 1)].text = ("Health Potion " + Potion_Ammount.ToString());
                break;
            case 2:
                PotionAmmountSave.ManaPotion = Potion_Ammount;
                Potion_AmmountText[(Potion_Value - 1)].text = ("Mana Potion " + Potion_Ammount.ToString());
                break;
            case 3:
                PotionAmmountSave.ShieldPotion = Potion_Ammount;
                Potion_AmmountText[(Potion_Value - 1)].text = ("Shield Potion " + Potion_Ammount.ToString());
                break;
            case 4:
                PotionAmmountSave.JumpPotion = Potion_Ammount;
                Potion_AmmountText[(Potion_Value - 1)].text = ("Jump Potion " + Potion_Ammount.ToString());
                break;
            case 5:
                PotionAmmountSave.SpeeedPotion = Potion_Ammount;
                Potion_AmmountText[(Potion_Value - 1)].text = ("Speed Potion " + Potion_Ammount.ToString());
                break;
            case 6:
                PotionAmmountSave.StrengthPotion = Potion_Ammount;
                Potion_AmmountText[(Potion_Value - 1)].text = ("Strength Potion " + Potion_Ammount.ToString());
                break;
        }
    }
    

    public void PotionSelected (int PotionValue)
    {
        Potion = true;
        PotionsUI.SetActive(false);
        Time.timeScale = 1f;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        CharacterAnimator.SetBool("Potion", true);
        PotionAmmount(PotionValue);
        switch (PotionValue)
        {
            
            case 1:
                if (Health < 100)
                {
                    if (Potion_Ammount < 0)
                    {
                        Health = 100;
                        HealthBar.value = Health;
                    }
                }
                break;
            case 2:
                if (Mana < 100)
                {
                    if (Potion_Ammount < 0)
                    {
                        Mana = 100;
                        ManaBar.value = Mana;
                    }
                }
                break;
            case 3:
                if (Shield < 100)
                {
                    if (Potion_Ammount < 0)
                    {
                        Shield = 100;
                        ShieldBar.value = Shield;
                    }
                }
                break;
            case 4:
                if (Potion_Ammount < 0)
                {
                    StartCoroutine(JumpBoost());
                }
                break;
            case 5:
                if (Potion_Ammount < 0)
                {
                    StartCoroutine(SpeedBoost());
                }
                break;
            case 6:
                if (Potion_Ammount < 0)
                {
                    StartCoroutine(StrengthBoost());
                }
                break;

        }
        Potion_Ammount = Potion_Ammount - 1;
        SetPotionAmmount(PotionValue);
        StartCoroutine(PotionTiming());
    }
    public void CanGrab()
    {
        PickupText.text = "Press 'E' to pickup item!";
        if (Input.GetButtonDown("Interact") && isPickingUp == false)
        {
            MoveOveride = true;
            isPickingUp = true;
            PickupText.text = "You Collected a coin!";
            CharacterAnimator.SetBool("Grab", true);
            CharacterAnimator.SetBool("Run", false);
            CharacterAnimator.SetBool("Jump", false);
            QuestManger.SendMessage("Grab");
            StartCoroutine(TextPickupTimer());
        }
    }
    public void QuestReached()
    {
        QuestManger.SendMessage("QuestCompleted");
        Debug.Log("QUESTrEACHED");
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
    public void FistHit(GameObject HitObject)
    {
        if (Attacking == true)
        {
            HitAmmount = (50 * HitMultiplier);
            HitObject.SendMessage("Damage", HitAmmount);
        }
    }
    public void SwordHit(GameObject HitObject)
    {
        if (Attacking == true)
        {
            HitAmmount = (100 * HitMultiplier);
            HitObject.SendMessage("Damage", HitAmmount);
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
        CharacterAnimator.SetBool("Attack", false);
        CharacterAnimator.SetBool("Jump", false);
        Attacking = false;
        CanSprint = true;
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
        CharacterAnimator.SetBool("Celebrate", false);
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
    IEnumerator JumpBoost()
    {
        JumpSpeed = 1f;
        yield return new WaitForSeconds(300);
        JumpSpeed = 0.6F;
    }
    IEnumerator SpeedBoost()
    {
        movementSpeed = 14;
        SprintSpeed = 24;
        yield return new WaitForSeconds(300);
        movementSpeed = 8;
        SprintSpeed = 16;
    }
    IEnumerator StrengthBoost()
    {
        HitMultiplier = 2;
        yield return new WaitForSeconds(300);
        HitMultiplier = 1;
    }
    IEnumerator PotionTiming()
    {
        Bottle.SetActive(true);
        yield return new WaitForSeconds(2.5f);
        Bottle.SetActive(false);
        CanMove();
        CharacterAnimator.SetBool("Potion", false);
        Potion = false;
    }
}

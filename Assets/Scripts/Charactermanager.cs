
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
    [SerializeField] float movementSpeed = 8f;
    [SerializeField] float SprintSpeed = 16f;
    [SerializeField] float JumpSpeed = 0.6f;
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
    public GameObject Bottle,SwordObject;
    public bool Potion, Sword,Dead;
    public int Potion_Ammount;
    public Text[] Potion_AmmountText;
    public Slider HealthBar, ManaBar, ShieldBar;
    public Transform DeathResetPoint;
    public EnemyDamage[] EnemieSoliders;
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
        if (DeveloperMode == true) 
        {
            PotionAmmountSave.HealthPotion = 3;
            Potion_AmmountText[(0)].text = ("Health Potion " + "3");
            PotionAmmountSave.ManaPotion = 3;
            Potion_AmmountText[(1)].text = ("Mana Potion " + "3");
            PotionAmmountSave.ShieldPotion = 3;
            Potion_AmmountText[(2)].text = ("Shield Potion " + "3");
            PotionAmmountSave.JumpPotion = 3;
            Potion_AmmountText[(3)].text = ("Jump Potion " + "3");
            PotionAmmountSave.SpeeedPotion = 3;
            Potion_AmmountText[(4)].text = ("Speed Potion " + "3");
            PotionAmmountSave.StrengthPotion = 3;
            Potion_AmmountText[(5)].text = ("Strength Potion " + "3");
        }
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
        if (Health <= 0 & Dead == false) 
        {
            Dead = true;
            StartCoroutine(Death());
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
                Potion_Ammount = 0;
                Time.timeScale = 0.25f;
                Cursor.lockState = CursorLockMode.None;
                PotionsUI.SetActive(true);
                Cursor.visible = true;
            }
        }
        if (Input.GetButtonUp("Potion"))
        {
            Time.timeScale = 1f;
            PotionsUI.SetActive(false);
            Potion = false;
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
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
            if (Mana > 0f)
            {
                Debug.Log("attackingggg");
                Attacking = true;
                CharacterAnimator.SetBool("Attack", true);
                CanSprint = false;
                ManaBar.value = Mana;
                Debug.Log("attg");
            }
        }
        if (Input.GetButton("Fire1"))
        {
            Mana -= 0.25f;
            ManaBar.value = Mana;
            if (Mana < 0)
            {
                Attacking = false;
                CharacterAnimator.SetBool("Attack", false);
                CanSprint = true;
                movementSpeed = OriginalSpeed;
                CharacterAnimator.SetBool("Run", false);
            }
        }
        if (Input.GetButtonUp("Fire1"))
        {
            Attacking = false;
            CharacterAnimator.SetBool("Attack", false);
            CanSprint = true;
            movementSpeed = OriginalSpeed;
            CharacterAnimator.SetBool("Run", false);
        }
        if (Mana < 100 && Attacking == false) 
        {
            StartCoroutine(ManaBarRejen());
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
        CharacterAnimator.SetBool("PreJump", false);
        gravity = 0;
    }
    public void SwordPickedUp() 
    {
        Sword = true;
        SwordObject.SetActive(true);
        CharacterAnimator.SetBool("Sword", true);
    }
   
    public void PotionTextUpdate() 
    {
        Potion_AmmountText[0].text = ("Health Potion " + PotionAmmountSave.HealthPotion.ToString());
        Potion_AmmountText[1].text = ("Mana Potion " + PotionAmmountSave.ManaPotion.ToString());
        Potion_AmmountText[2].text = ("Shield Potion " + PotionAmmountSave.ShieldPotion.ToString());
        Potion_AmmountText[3].text = ("Jump Potion " + PotionAmmountSave.JumpPotion.ToString());
        Potion_AmmountText[4].text = ("Speed Potion " + PotionAmmountSave.SpeeedPotion.ToString());
        Potion_AmmountText[5].text = ("Strength Potion " + PotionAmmountSave.StrengthPotion.ToString());
    }
    public void PotionSelected (int PotionValue)
    {
        Potion = true;
        PotionsUI.SetActive(false);
        Time.timeScale = 1f;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        switch (PotionValue)
        {   
            case 1:
                if (Health < 100)
                {
                    if (PotionAmmountSave.HealthPotion > 0)
                    {
                        Health = 100;
                        HealthBar.value = Health;
                        PotionAmmountSave.HealthPotion = PotionAmmountSave.HealthPotion - 1;
                        CharacterAnimator.SetBool("Potion", true);
                        StartCoroutine(PotionTiming());
                    }
                }
                break;
            case 2:
                if (Mana < 100)
                {
                    if (PotionAmmountSave.ManaPotion > 0)
                    {
                        Mana = 100;
                        ManaBar.value = Mana;
                        PotionAmmountSave.ManaPotion = PotionAmmountSave.ManaPotion - 1;
                        CharacterAnimator.SetBool("Potion", true);
                        StartCoroutine(PotionTiming());
                    }
                }
                break;
            case 3:
                if (Shield < 100)
                {
                    if (PotionAmmountSave.ShieldPotion > 0)
                    {
                        Shield = 100;
                        ShieldBar.value = Shield;
                        PotionAmmountSave.ShieldPotion = PotionAmmountSave.ShieldPotion - 1;
                        CharacterAnimator.SetBool("Potion", true);
                        StartCoroutine(PotionTiming());
                    }
                }
                break;
            case 4:
                if (PotionAmmountSave.JumpPotion > 0)
                {
                    StartCoroutine(JumpBoost());
                    StartCoroutine(PotionTiming());
                    PotionAmmountSave.JumpPotion = PotionAmmountSave.JumpPotion - 1;
                    CharacterAnimator.SetBool("Potion", true);
                }
                break;
            case 5:
                if (PotionAmmountSave.SpeeedPotion > 0)
                {
                    StartCoroutine(SpeedBoost());
                    StartCoroutine(PotionTiming());
                    PotionAmmountSave.SpeeedPotion = PotionAmmountSave.SpeeedPotion - 1;
                    CharacterAnimator.SetBool("Potion", true);
                }
                break;
            case 6:
                if (PotionAmmountSave.StrengthPotion > 0)
                {
                    StartCoroutine(StrengthBoost());
                    StartCoroutine(PotionTiming());
                    PotionAmmountSave.StrengthPotion = PotionAmmountSave.StrengthPotion - 1;
                    CharacterAnimator.SetBool("Potion", true);
                }
                break;
        }
        PotionTextUpdate();
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
    public void CanGrabMap()
    {
        PickupText.text = "Press 'E' to pickup item!";
        if (Input.GetButtonDown("Interact") && isPickingUp == false)
        {
            MoveOveride = true;
            isPickingUp = true;
            PickupText.text = "You Collected Papers";
            CharacterAnimator.SetBool("Grab", true);
            CharacterAnimator.SetBool("Run", false);
            CharacterAnimator.SetBool("Jump", false);
            QuestManger.SendMessage("QuestCompleted");
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
    public void DamageDelt()
    {
        if (Shield == 0)
        {
            Health = Health - 15;
            HealthBar.value = Health;
            StartCoroutine(Hit());
        }
        else 
        {
            Shield = Shield - 20;
            ShieldBar.value = Shield;
            Health = Health -5;
            HealthBar.value = Health;
            StartCoroutine(Hit());
        }
    }
    public void ApothecaryShop()
    {
        if (ShopTeleporting == false)
        {
            ShopTeleporting = true;
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
            Debug.Log(HitObject);
        }
    }
    IEnumerator ApothecaryShopTiming()
    {
        TransitionController.SetBool("CircleTransition", true);
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
    IEnumerator Death()
    {
        TransitionController.SetBool("CircleTransition", true);
        yield return new WaitForSeconds(1f);
        gameObject.GetComponent<CharacterController>().enabled = false;
        transform.position = DeathResetPoint.position;
        gameObject.GetComponent<CharacterController>().enabled = true;
        yield return new WaitForSeconds(1f);
        TransitionController.SetBool("CircleTransition", false);
        EnemieSoliders[0].Health = 800;
        EnemieSoliders[1].Health = 800;
        Health = 100;
        HealthBar.value = Health;
        Shield = 100;
        ShieldBar.value = Shield;
        Dead = false;
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
    IEnumerator Hit()
    {
        CharacterAnimator.SetBool("Hit", true);
        yield return new WaitForSeconds(0.5f);
        CharacterAnimator.SetBool("Hit", false);
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
    IEnumerator ManaBarRejen()
    {
        if (Attacking == false)
        {
            yield return new WaitForSeconds(1f);

            if (Attacking == false)
            {
                yield return new WaitForSeconds(1f);

                if (Attacking == false)
                {
                    yield return new WaitForSeconds(1f);

                    if (Attacking == false)
                    {
                        yield return new WaitForSeconds(1f);
                        if (Mana < 100 && Attacking == false)
                        {
                            Mana += 0.5f;
                            ManaBar.value = Mana;
                            StartCoroutine(ManaBarRejen());
                        }
                    }
                }
            }
        }
    }
}

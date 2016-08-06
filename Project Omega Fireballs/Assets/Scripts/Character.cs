using UnityEngine;
using System.Collections;

public class Character : MonoBehaviour {

    Rigidbody2D character;
    Vector2 move;
    Animator charAnim;
    public bool dead = false;





    void OnCollisionEnter2D(Collision2D collision)
    {

        if (collision.gameObject.tag == "Fireball")
        {
            //Destroy(gameObject);
          
            //charAnim.SetInteger("charState", 2);

            dead = true; 

        }

    }





        // Use this for initialization
   void Start () {
        character = GetComponent<Rigidbody2D>();
        charAnim = GetComponent<Animator>();
       // charAnim.SetInteger("charState", 0);
    }
	
	// Update is called once per frame
	void Update ()
    {
        // check if dead. 
        if (dead == false){

	        if (Input.GetMouseButton(0))
            {
                if ((Input.mousePosition.x < 90) && (Input.mousePosition.y < 95))
                {
                   // charAnim.SetInteger("charState", -1);
                    move = new Vector2(-11.0f, character.velocity.y);
                    character.velocity = move;
                }
                if((Input.mousePosition.x > 707) && (Input.mousePosition.y < 95))
                {
                   // charAnim.SetInteger("charState", 1);
                    move = new Vector2(11.0f, character.velocity.y);
                    character.velocity = move;
                }
            }else
              //  charAnim.SetInteger("charState", 0);

            character.drag = 20;
        }      
	}
}

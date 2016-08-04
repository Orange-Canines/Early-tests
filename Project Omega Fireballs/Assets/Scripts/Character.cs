using UnityEngine;
using System.Collections;

public class Character : MonoBehaviour {

    Rigidbody2D character;
    Vector2 move;
    Animator charAnim;

    // Use this for initialization
    void Start () {
        character = GetComponent<Rigidbody2D>();
        charAnim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if (Input.GetMouseButton(0))
        {
            if ((Input.mousePosition.x < 90) && (Input.mousePosition.y < 95))
            {
                charAnim.SetInteger("charState", -1);
                move = new Vector2(-11.0f, character.velocity.y);
                character.velocity = move;
            }
            if((Input.mousePosition.x > 707) && (Input.mousePosition.y < 95))
            {
                charAnim.SetInteger("charState", 1);
                move = new Vector2(11.0f, character.velocity.y);
                character.velocity = move;
            }
        }else
            charAnim.SetInteger("charState", 0);

        character.drag = 20;
          
	}
}

using UnityEngine;
using System.Collections;



public class scr_hero_collision_Fireball : MonoBehaviour
{

    // Use this for initialization
    Animator anim;

    void OnCollisionEnter2D(Collision2D collision)
    {

        if (collision.gameObject.tag == "Fireball")
        {
            //Destroy(gameObject);
          //  anim = GetComponent<Animator>();
            anim.SetInteger("charState", 0);
            //StartCoroutine(Explode());

        }

    }
}
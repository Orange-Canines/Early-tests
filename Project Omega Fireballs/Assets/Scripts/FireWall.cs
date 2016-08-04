using UnityEngine;
using System.Collections;

public class FireWall : MonoBehaviour {

    Animator anim;
 
    void OnCollisionEnter2D(Collision2D collision)
    {
        
        if (collision.gameObject.tag == "Fireball")
        {
            //Destroy(gameObject);
            anim = GetComponent<Animator>();
            anim.SetInteger("State", 1);
            StartCoroutine(Explode());
               
        }
    }

    IEnumerator Explode()
    {
        yield return new WaitForSeconds(0.6f);
        Destroy(gameObject);
    }


}

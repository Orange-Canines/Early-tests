using UnityEngine;
using System.Collections;

public class FireAnim : MonoBehaviour {

    Animator anim;
    private int myState;

	// Use this for initialization
	void Start () {
        anim = GetComponent<Animator>();
    }
	
	// Update is called once per frame
	void Update () {
        myState = anim.GetInteger("State");
        if (myState == 1)
        {
            
        }
	}

}

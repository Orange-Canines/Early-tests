using UnityEngine;
using System.Collections;


public class NewBehaviourScript : MonoBehaviour {
    public int level;
    public int experience;
    public float MySpeed = 10.0f;
   
    // Use this for initialization
    void Start () {
        level = 0;
        //rb = GetComponent<Rigidbody>();
        experience = 0;
	}

    // Update is called once per frame
    void Update() {
        if (experience < 50)
            level += 1;


        // float moveHorizontal = Input.GetAxis("Horizontal");
        //float moveVertical = Input.GetAxis("Vertical");

        // Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);
        if (Input.GetKey(KeyCode.RightArrow) == true)
        {
            transform.Rotate(Vector3.up, MySpeed * 5 * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.LeftArrow) == true) {
            transform.Rotate(Vector3.down, MySpeed * 5 * Time.deltaTime); }

        if (Input.GetKey(KeyCode.UpArrow) == true)
        {
            transform.Translate(Vector3.left * MySpeed * Time.deltaTime * 3 * 2);
        }

        if (Input.GetKey(KeyCode.DownArrow) == true)
        {
            transform.Translate(Vector3.left * MySpeed * Time.deltaTime );
        }
        else { 
             transform.Translate(Vector3.left * MySpeed * Time.deltaTime * 3);
        }
    }
}

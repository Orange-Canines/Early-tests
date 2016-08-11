using UnityEngine;
using System.Collections;

public class scr_plane_con : MonoBehaviour {
    public int level;
    public int money =0;
    public int passengers;
    public int experience;
    public float MySpeed = 10.0f;

    // Use this for initialization
    void Start()
    {
        level = 0;
        money = 0;
        passengers = 0; 
        experience = 0;
    }






    void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.tag == "People")
        {
            GameObject person = other.gameObject; 
            Destroy(person);
            money += 1000;
        }
        
        
    }


    // Update is called once per frame
    void Update()
    {
        experience += 1;
 

        // Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);
        if (Input.GetKey(KeyCode.RightArrow) == true)
        {
            transform.Rotate(Vector3.up, MySpeed * 5 * Time.deltaTime);
        }
        if (Input.GetKey(KeyCode.LeftArrow) == true)
        {
            transform.Rotate(Vector3.down, MySpeed * 5 * Time.deltaTime);
        }

        if (Input.GetKey(KeyCode.UpArrow) == true)
        {
            transform.Translate(Vector3.right * MySpeed * Time.deltaTime * 3 * 2);
        }

        if (Input.GetKey(KeyCode.DownArrow) == true)
        {
            transform.Translate(Vector3.right * MySpeed * Time.deltaTime);
        }
        else
        {
            transform.Translate(Vector3.right * MySpeed * Time.deltaTime * 3);
        }
    }
}

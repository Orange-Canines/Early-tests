using UnityEngine;
using System.Collections;

public class FireEmmit : MonoBehaviour {

    public GameObject Fireball;
    private Vector3 location;
    private Quaternion rot;
    private float min = -6.0f;
    private float max = 6.0f;
    private float StartY = 8.0f;
    private int Timer = 100;
    private int i = 0;
    private int timer_time = 200;
    private GameObject[] getCount;
    private int count; 
    // Use this for initialization
    void Start () {

    }
	
	// Update is called once per frame
	void Update ()
    {
        if (i == Timer) {

            getCount = GameObject.FindGameObjectsWithTag("People");
            count = getCount.Length;
            if (count < 5)
            {
                location = new Vector3(UnityEngine.Random.Range(min, max), StartY, 0);
                Instantiate(Fireball, location, rot);
            }
            i = 0;
            if(StartY < 30)
            {
                StartY += 0.1f;
            }
            if(StartY > 15)
            {
                Timer = 5;
                //if (timer_time < 40)
                   // timer_time -= 30;
            }
            if(StartY > 25)
            {
                Timer = 5;
               // if (timer_time < 40)
                  //  timer_time -= 30;
                  
            }           
        }
        i++;  
    }
}

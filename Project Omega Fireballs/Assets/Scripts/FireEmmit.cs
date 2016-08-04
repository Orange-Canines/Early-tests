using UnityEngine;
using System.Collections;

public class FireEmmit : MonoBehaviour {

    public GameObject Fireball;
    private Vector3 location;
    private Quaternion rot;
    private float min = -6.0f;
    private float max = 6.0f;
    private float StartY = 8.0f;
    private int Timer = 200;
    private int i = 0;

	// Use this for initialization
	void Start () {

    }
	
	// Update is called once per frame
	void Update ()
    {
        if (i == Timer) {
            location = new Vector3(UnityEngine.Random.Range(min, max), StartY, 0);
            Instantiate(Fireball, location, rot);
            i = 0;
            if(StartY < 30)
            {
                StartY += 0.1f;
            }
            if(StartY > 15)
            {
                Timer = 150;
            }
            if(StartY > 25)
            {
                Timer = 100;
            }           
        }
        i++;  
    }
}

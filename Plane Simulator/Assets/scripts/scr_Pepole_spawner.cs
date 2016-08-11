using UnityEngine;
using System.Collections;

public class scr_Pepole_spawner : MonoBehaviour {
    public GameObject People;
    private Vector3 location;
    private Quaternion rot;
    public float min = -100.0f;
    public float max = 100.0f;
    public int Timer = 400;
    private int i = 0;
    private GameObject[] getCount;
    private int count;

    // Use this for initialization
    void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        if (i == Timer)
        {
            getCount = GameObject.FindGameObjectsWithTag("People");
            count = getCount.Length;
            if (count < 5)
            {
                location = new Vector3(UnityEngine.Random.Range(min, max), 4, UnityEngine.Random.Range(min, max));
                Instantiate(People, location, rot);
            }
                i = 0;
        }
        i++;
    }
}

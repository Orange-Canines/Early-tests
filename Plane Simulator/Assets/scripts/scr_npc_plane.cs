using UnityEngine;
using System.Collections;

public class scr_npc_plane : MonoBehaviour {
    public GameObject target;
    public int State;
    // Use this for initialization

    void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Wall")
        {
            //  Random rnd = new Random();
            State = Random.Range(1, 2);
        }
    }



    void Start () {

        // GameObject target = GameObject.Find("obj_plane");
        State = -State;
    }






    // Update is called once per frame
    void Update()
    {
        // down 
        if (State == 2) {
            //transform.eulerAngles = new Vector3(0, 180, 0);
            Quaternion target = Quaternion.Euler(0, 90, 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, target, Time.deltaTime * 1);
            transform.Translate(Vector3.right * 2 * Time.deltaTime * 3 * 2);
        }

        // left 
        if (State == 1)
        {
            //transform.eulerAngles = new Vector3(0, 180, 0);
            Quaternion target = Quaternion.Euler(0, 180, 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, target, Time.deltaTime*1);
            transform.Translate(Vector3.right * 2 * Time.deltaTime * 3 * 2);
           
        }
        // right
        if (State == -1)
        {
            //transform.eulerAngles = new Vector3(0, 180, 0);
            Quaternion target = Quaternion.Euler(0, 0, 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, target, Time.deltaTime * 1);
            transform.Translate(Vector3.right * 2 * Time.deltaTime * 3 * 2);

        }

        if (State == -2)
        {
      
            Quaternion target = Quaternion.Euler(0, 270, 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, target, Time.deltaTime * 1);
            transform.Translate(Vector3.right * 2 * Time.deltaTime * 3 * 2);

        }


    }

}

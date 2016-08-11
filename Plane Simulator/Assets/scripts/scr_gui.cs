using UnityEngine;
using System.Collections;
using UnityEngine.UI; // include this sucker for text 

public class scr_gui : MonoBehaviour {
    public Text Experience;
    public int experience;
    public Text Money;
    public int moneys; 

    public GameObject player;

   // public  targetScript: ScriptName;
    // Use this for initialization
    void Start () {
     
    }

        // Update is called once per frame
        void Update () {

        /// holly crap. 
        /// so first grab the object with the script you want. 
        /// 
        //   player = GameObject.FindGameObjectWithTag("Hero");

        GameObject player = GameObject.Find("obj_plane");
        // then create a new script that has the object of the script you want. 
        // almost done. now cry. 

        scr_plane_con bScript = player.GetComponent<scr_plane_con>();
        experience = bScript.experience;
 
        moneys = bScript.money;

        Experience.text = experience.ToString();
        Money.text = moneys.ToString();
        //experiences.text = experience.ToString();
    }
}

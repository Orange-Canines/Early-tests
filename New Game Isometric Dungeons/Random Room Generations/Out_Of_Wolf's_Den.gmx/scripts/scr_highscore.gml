///Add score to highscore list (myscore, myname)  
var myscore = argument[0]
var myname = argument[1]
 //lclhigh [i,1]  = myname;
 //lclhigh [i,1]  = myscore; 

    for (i = 0; i<11; i++){
        //if the player's score is greater than the spot in question
        if (myscore > global.lclhigh [i, 1]) && !global.written{
            //starting at the last element of the array, set each element to the one before it.
            for (j = 10; j>i; j--){
                if !global.written {
                    global.lclhigh[j, 0] = global.lclhigh[j-1, 0];
                    global.lclhigh[j, 1] = global.lclhigh[j-1, 1];
                }
            }      
            //now set the space to that of this player
            global.lclhigh[i, 0] = myname
            global.lclhigh[i, 1] = myscore 
            global.highscorePos = i;     
            global.written = true;  
        }  
    }
            
    //now update ini with this new array
    ini_open("scores.ini")
    for (i = 0; i<11; i++){
        ini_write_string(string(i), "Name", global.lclhigh[i, 0]);
        ini_write_real(string(i), "Score", global.lclhigh[i, 1]);
    }
    ini_close();
    //don't forget to close
 
 

 
 
 
/* EXAMPLE 
        0         1         2
  .------------------------------.
0 | Chronic | Bluntman |   Zod   |
  |---------|----------|---------|
1 |    4    |     5    |    2    |
  |---------|----------|---------|
2 |   100   |    47    |   106   |


player_info[0,0] = "Chronic"
player_info[0,1] = 4
player_info[0,2] = 100

player_info[1,0] = "Bluntman"
player_info[1,1] = 5
player_info[1,2] = 47

player_info[2,0] = "Zod"
player_info[2,1] = 2
player_info[2,2] = 106



/// move down 
for(int i=0;i<moveArray.length-1;i++){ 
     moveArray[i] = moveArray[i+1];
}
moveArray[moveArray.length - 1] = intoWalk;



// Array (col, row. 
// name ,  score 



// step read alll the variables 
for (i=0; i<=10; i+=1) {
// compare if my score > highscore. 
    if (myscore >= lclhigh [i,1] ) {
        //move all them down

        // if so replace score 
         for (j=0; j<=10; j+=1) {
           lclhigh [j +1,1] =  lclhigh [j,1] 
            }
         
         lclhigh [i,1] = myscore; 
         lclhigh [i,0] = myname; 
         }
         
}
// Else you failed.

    
    

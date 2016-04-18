///Random_Path


//Create Controller Center of Grid 
cx = width div 2; 
cy = height div 2;


//give controller a random direction 
var cdir = irandom(3); 
// the odds variable at changing direction 
var odds = 1; 

// create the level using 1000 steps 
repeat(1000){

//place a floor tile at controller position 
grid[# cx, cy] = HOUSE_FLOOR; /// acessor  (x,y) wherever Controlers goes draw grid!

// This is an alternate way to say ds_grid_set(grid, cx,cy, floor )
        ///Move the controller to draw floor        
    if (irandom(odds) == odds){
    
    // chooses 0 or 1. has  50% chance of this
           cdir = irandom(3); 
        }
        
    
               
    // move controller for real now.               
    var xdir = lengthdir_x(1, cdir*90); 
    var ydir = lengthdir_y(1, cdir*90);
    /// now clamp it so it does go by edge.
    // make sure you dont move outside grid 
    cx = clamp (cx, 1, width- 1 ) 
    xy = clamp (cy, 1, height-1) 

    cx+= xdir; 
     cy+= ydir; 
     cx = clamp (cx, 1, width- 1 ) 
    xy = clamp (cy, 1, height-1) 
               
   
}

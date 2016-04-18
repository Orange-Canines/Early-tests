/// (center 1 x, center 1 y, (center 2 x,center 2 y) 
myroom_centerx1 = argument[0]  
myroom_centery1 =argument[1]
myroom_centerx2 =argument[2]
myroom_centery2 = argument[3]

var mypath = irandom(1)

if (mypath==1){
    ds_grid_set_region(grid,myroom_centerx1,myroom_centery1-1,myroom_centerx2,myroom_centery1+1, HOUSE_FLOOR)
    ds_grid_set_region(grid,myroom_centerx2+1,myroom_centery2,myroom_centerx2-1,myroom_centery1, HOUSE_FLOOR)
}
else { 
    ds_grid_set_region(grid,myroom_centerx2,myroom_centery2+1,myroom_centerx1,myroom_centery2-1, HOUSE_FLOOR)
    ds_grid_set_region(grid,myroom_centerx1+1,myroom_centery1,myroom_centerx1-1,myroom_centery2, HOUSE_FLOOR)
}


//Logically  Path 1 
 // x1 to x2 y1 to y1 
//x2 to x2  y2 to y1
// path 2 Just the inverse 

// Screen Shake  () arguement 0- normal  1- shake...etc 



if Shake == 0{
    view_xview[0] = clamp(x - (view_wview[0] / 2), 0, room_width );
    view_yview[0] = clamp(y - (view_hview[0] / 2), 0, room_height); }
     
     
if Shake == 1{
    view_xview[0] = clamp(x - (view_wview[0] / 2), 0, room_width - view_wview[0]);
    
    }

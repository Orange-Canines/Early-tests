tmp = global.heroState;
 
if (keyLeft) = 1 {
    facing = -1; 
}  
if (keyRight) = 1 {
    facing = 1; 
}  
       
image_xscale = facing;
image_yscale = 1;  
    
enable_movement_platform_actions(.25, myRunSpeed, myjumpheight, keyRight, keyLeft, keyJump, keyJump);
set_movement_gravity(.5);
move_movement_entity_hero(); 

// Basics

if (keyLeft) = 1 {
    facing = -1; 
}
if (keyRight) = 1 {
    facing = 1; 
}
image_xscale = facing;
scr_phantom();
// Regular Gravity
if tmp = 0{
    image_yscale = 1;
    scr_charge(); 
    enable_movement_platform_actions(.25, myRunSpeed, myjumpheight, keyRight, keyLeft, keyJump, keyJump);
    move_movement_entity_hero();  
}
    
// Anti Gravity
else if tmp = 3{
    image_yscale = -1;
    scr_charge();
    enable_movement_platform_actions(.25, myRunSpeed, -myjumpheight, keyRight, keyLeft, keyJump, keyJump);
    move_movement_entity_hero();
}

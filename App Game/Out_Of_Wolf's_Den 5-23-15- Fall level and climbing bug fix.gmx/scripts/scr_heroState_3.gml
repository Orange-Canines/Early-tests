tmp = global.heroState;

if (global.keyLeft) = 1 {
    facing = -1; 
  }
    
if (global.keyRight) = 1 {
    facing = 1; 
    } 
image_xscale = facing;
image_yscale = -1;

enable_movement_platform_actions(.25, myRunSpeed, -myjumpheight, global.keyRight, global.keyLeft, global.keyJump, global.keyJump);
set_movement_gravity(.5);
move_movement_entity_hero();

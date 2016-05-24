/// Dead 
if (image_yscale == 1 ){
        enable_movement_platform_actions(0, 0, 0, 0, 0, 0, 0);
        set_movement_gravity(.5);
        move_movement_entity();
         room_speed = 45;
        }
else{
        //enable_movement_platform_actions(0, 0, 0, 0, 0, 0, 0);
       // set_movement_gravity(-.5);
        //move_movement_entity();
        enable_movement_platform_actions(.25, myRunSpeed, -myjumpheight, global.keyRight, global.keyLeft, global.keyJump, global.keyJump);
        set_movement_gravity(-.5);
        move_movement_entity_hero();
        move_movement_entity();
        room_speed = 45;
        }


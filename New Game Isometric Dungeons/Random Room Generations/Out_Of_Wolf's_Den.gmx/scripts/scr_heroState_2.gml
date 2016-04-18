/// Dead 
if (image_yscale == 1 ){
        enable_movement_platform_actions(0, 0, 0, 0, 0, 0, 0);
        set_movement_gravity(.5);
        move_movement_entity();
         room_speed = 45;
        }
else{
      if place_meeting(x,y-1,obj_wall){
      hspd = 0 
      vspd = 0; 
      }
        enable_movement_platform_actions(0, 0, 0, 0, 0, 0, 0);
        set_movement_gravity(-.5);
        //move_movement_entity_hero();
        move_movement_entity();
        room_speed = 45;
        }


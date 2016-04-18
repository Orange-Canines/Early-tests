    scr_screenshake(); 
        scr_basicmove()
        
        if keyboard_check_released(ord('Q')){
            instance_create(x,y,obj_hero) 
            Riding = 0; 
            sprite_index = spr_pet; 
            }
            
          
             
             
        if keyboard_check(ord('1')) {
             var mybullet1 = instance_create(x,y,obj_bullet)
             
             
                      }

// If far from hero.  Find him


// wander around hero 


// get lost 

    if (Wandering ==true){
        set_movement_direction_speed(rand_move,2)
        move_movement_entity(); 
        if alarm[0] == -1
            alarm[0] = 40; 
        image_blend = make_colour_hsv( 0, 0, 255);
        AI = "Wander"
        }
    
    // Ramm foward
    if keyboard_check(ord('1')){
          var mybullet1 = instance_create(x,y,obj_bullet)
           AI = "RAM!"
           }
           
                   
    // attack 
    if keyboard_check(ord('2')){
        if (instance_exists (obj_enemy)){
            var  insta = instance_nearest(x,y,obj_enemy) 
                 scr_AI_RunToo(4,insta,self)  
                 image_blend = make_colour_hsv( 0, 240, 255);
                AI = "Range Attack!"
                }
        }
        

    // Suummnon 
    if keyboard_check(ord('3')){
           if instance_exists (obj_hero){
           x = obj_hero.x + 10
           y = obj_hero.y + 10
           AI = "Summoned"
           }
    }
    // Circle 
       if keyboard_check(ord('4')){
        if (instance_exists (obj_hero)){
            var  insta = instance_nearest(x,y,obj_hero) 
                 scr_circle_me2(2.4,insta,50)
                   
                 image_blend = make_colour_hsv( 300, 240, 255);
                 AI = "Circle me"
                }
        }
    // Sitting 
    
    
    
    // RUNAWAY
        if keyboard_check(ord('5')){
        if (instance_exists (obj_enemy)){
            var  insta = instance_nearest(x,y,obj_hero) 
                 scr_AI_RunAway(4,insta,self)  
                 image_blend = make_colour_hsv( 240, 100, 100);
                AI = "Run Away"
                }
        }
        
        /// Run to player! 
          if keyboard_check(ord('6')){
            if (instance_exists (obj_enemy)){
                var  insta = instance_nearest(x,y,obj_hero) 
                     scr_AI_RunToo(4,insta,self)  
                    AI = "follow player"
                    }
        }
    

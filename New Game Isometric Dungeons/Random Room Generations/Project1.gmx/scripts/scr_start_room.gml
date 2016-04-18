/// (width,height, Center, Scale, 
myroom_width = argument[0]
myroom_height =argument[1]
myroom_centerx =argument[2];
myroom_centery = argument[3];


//ds_grid_set_region(grid, 5, 5, 25, 25,WALL);
ds_grid_set_region(grid, myroom_centerx-(myroom_width/2), myroom_centery-(myroom_height/2), myroom_centerx+(myroom_width/2), myroom_centery+(myroom_height/2),HOUSE_FLOOR);
instance_create(myroom_centerx*32,myroom_centery*32,obj_stairs)

/// (width,height, Center, Scale, 
myroom_width = argument[0]
myroom_height =argument[1]
myroom_center =argument[2];
myroom_scale = argument[3];
//ds_grid_set_region(grid, 5, 5, 25, 25,WALL);
ds_grid_set_region(grid, myroom_center-(myroom_width/2), myroom_center-(myroom_height/2), myroom_center+(myroom_width/2), myroom_center+(myroom_height/2),FLOOR);


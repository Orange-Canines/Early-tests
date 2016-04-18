///#define scr_particle
Sname = part_system_create();
particle1 = part_type_create();

part_type_sprite(particle1, sprite_index,0, 0 ,0);

part_type_size(particle1,1,1,0,0);
part_type_scale(particle1,1,1);
part_type_color3(particle1,1388736,2194304,1194368);
part_type_alpha1(particle1,1);
part_type_speed(particle1,0,0,0,0);
part_type_gravity(particle1,0.0,180);
part_type_blend(particle1,.5);
part_type_life(particle1,0,60);
part_system_depth(particle1, 1);

emitter1 = part_emitter_create(Sname);
part_emitter_region(Sname,emitter1,x,x,y,y,0,0);
part_emitter_burst(Sname,emitter1,particle1,1);

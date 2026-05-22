function scr_death(){
instance_create_depth(600, 400,0,obj_deathscreen);
global.death = true;
instance_destroy(obj_pickup);
instance_destroy(obj_spawner);
}
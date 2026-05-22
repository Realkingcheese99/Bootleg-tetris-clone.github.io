function scr_sr(){
global.player_health = 3;
global.player_score = 0;
global.death = false
global.time = 0;
instance_destroy(obj_deathscreen);
instance_create_depth(0,0,0,obj_spawner);
scr_health();
}
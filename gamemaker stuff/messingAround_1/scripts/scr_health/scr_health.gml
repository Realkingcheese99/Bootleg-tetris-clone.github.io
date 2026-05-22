function scr_health(){
	if(global.player_health > 0) {
for(var i = 0; i < global.player_health; i++) {
	instance_destroy(obj_health);
	instance_create_depth(0+64*i,50,0,obj_health)
}
	} else {
		scr_death();
	}
}
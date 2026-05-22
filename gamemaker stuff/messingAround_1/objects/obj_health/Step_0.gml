
if(a == 1) {
if(place_meeting(x,y,obj_player)) {
	global.player_health++;
	scr_health();
	instance_destroy();
}
y = y + global.time/1000 + 4;
}
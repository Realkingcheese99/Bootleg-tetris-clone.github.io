pickupSpd = global.time/1000 + 4;
y=y+pickupSpd;
if(place_meeting(x,y,obj_player)) {
	global.player_score++;
	instance_destroy();
} else if(place_meeting(x,y,obj_bottom)) {
	//global.player_score--;
	global.player_health--;
	instance_destroy();
	scr_health()
}
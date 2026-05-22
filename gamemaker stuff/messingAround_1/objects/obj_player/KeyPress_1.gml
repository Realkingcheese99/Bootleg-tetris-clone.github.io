if keyboard_check(ord("L")) {
	playerSpd++;
	player_score++;
	show_debug_message(playerSpd);
} else if keyboard_check(ord("K")) {
	playerSpd--;
	player_score--;
	show_debug_message(playerSpd);
	
}
if(global.death == false) {
if(keyboard_check(vk_space) && dashing == false) {
	xVel = xVel * 10;
	dashing = true
}
}
if(keyboard_check(ord("F"))) {
	if(window_get_fullscreen()) {
		window_set_fullscreen(false);
	} else {
		window_set_fullscreen(true);
	}
}
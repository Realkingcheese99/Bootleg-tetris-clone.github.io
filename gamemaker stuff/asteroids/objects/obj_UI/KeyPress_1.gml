if(keyboard_check(vk_space) && reset == true) {
		room_goto(r_game);
	scr_reset();
	
}

if(keyboard_check(vk_escape)) {
	game_end();
}
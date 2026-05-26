if(keyboard_check(ord("Z"))) {
	if(dir % 2 == 0) { // vertical
		if(dir == 0) {
			global.dialogueActive = place_meeting(x,y+dialogueRange,obj_dialogueInteract);
		} else {
			global.dialogueActive = place_meeting(x,y-dialogueRange,obj_dialogueInteract);
		}
	} else { // horizontal
		if(dir == 1) {
			global.dialogueActive = place_meeting(x-dialogueRange,y,obj_dialogueInteract);
		} else {
			global.dialogueActive = place_meeting(x+dialogueRange,y,obj_dialogueInteract);
		}
	}
	
	if(global.dialogueActive == true) {
		if(global.dialogueLine+1<array_length(global.dialogue)) {
			if(z>=string_length(global.dialogue[global.dialogueLine])) {
			global.dialogueLine++;
				z = 0;
			}
		} else {
			global.dialogueActive = false;
			z = 0;
			global.dialogueLine = 0;
		}
	alarm[0] = talkSpd;
} else {
	z = 0;
	global.dialogueLine = 0;
}
} else if(keyboard_check(ord("X"))) {
	z = string_length(global.dialogue[global.dialogueLine])-1;
	alarm[0] = talkSpd;
}

//show_debug_message(global.dialogueActive);

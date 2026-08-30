if(controlling == true) {
if(obj_battle_box.moving == false) {
if(keyboard_check(vk_left)) {
	select++;
} else if(keyboard_check(vk_right)) {
	select--;
}
}

if(keyboard_check(ord("Z"))) {
	if(select == 0) {
	} else if(select == 1) {
	} else if(select == 2) {
	} else if(select == 3) {
	} else if(select == 4) {
		obj_battle_box.moving = toggle(obj_battle_box.moving);
		if(obj_battle_box.moving == false) {
			buttons[4] = "MOVE"
		} else {
			buttons[4] = "STOP";
		}
	} else if(select == 5) {
		array_copy(buttons,0,items,0,array_length(items));
	} else if(select == 6) {
	} else if(select == 7) {
		obj_battle_box.nextturn = true;
	}
}


if(keyboard_check(ord("X"))) {
	if(array_equals(buttons,startbuttons) and currentpartymember != 0) {
		currentpartymember--;
	} else {
		obj_battle_box.moving = false;
		array_copy(buttons,0,startbuttons,0,array_length(startbuttons));
	}
}


if(keyboard_check(vk_space)) {
	spawn_at(4,1,2);
}
}
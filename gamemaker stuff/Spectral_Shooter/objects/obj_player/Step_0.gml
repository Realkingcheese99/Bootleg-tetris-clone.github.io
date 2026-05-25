if(keyboard_check(ord("W"))) {
	yVel = -playerSpd;
} else if(keyboard_check(ord("S"))) {
	yVel = playerSpd;
} else {
	yVel = 0;
}

if(keyboard_check(ord("A"))) {
	xVel = -playerSpd;
} else if(keyboard_check(ord("D"))) {
	xVel = playerSpd;
} else {
	xVel = 0;
}


if(mouse_check_button(mb_left)) {
	if(alarm[0] == -1) {
		alarm[0] = global.fireRate;
	}
}

x=x+xVel;
y=y+yVel;
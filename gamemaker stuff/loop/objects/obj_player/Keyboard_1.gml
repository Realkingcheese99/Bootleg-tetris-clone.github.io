if(keyboard_check(ord("W"))) {
	yVel = -spd;
	dir = 2;
} else if(keyboard_check(ord("S"))) {
	yVel = spd;
	dir = 0;
}

if(keyboard_check(ord("A"))) {
	xVel = -spd;
	dir = 1;
} else if(keyboard_check(ord("D"))) {
	xVel = spd;
	dir = 3;
}
if(playerdeath == false) {
if(keyboard_check(ord("W"))) {
	yVel = -spd;
} else if(keyboard_check(ord("S"))) {
	yVel = spd;
}

if(keyboard_check(ord("A"))) {
	xVel = -spd;
} else if(keyboard_check(ord("D"))) {
	xVel = spd;
}

if(keyboard_check(vk_left) && !keyboard_check(vk_right)){
	angular_velocity = turnSpd;
} else if(keyboard_check(vk_right) && !keyboard_check(vk_left)) {
	angular_velocity = -turnSpd;
}

if(keyboard_check(vk_space)) {
	if(alarm[0] == -1) {
		alarm[0] = fireRate;
	instance_create_layer(x,y,"Instances",obj_bullet, {
		angle: image_angle
		}
		);
	}
}
}
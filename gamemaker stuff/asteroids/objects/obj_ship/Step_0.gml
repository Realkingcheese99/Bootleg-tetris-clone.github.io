y+=yVel;
x+=xVel;
image_angle += angular_velocity;
yVel = yVel *(1-ship_friction);
xVel = xVel *(1-ship_friction);
angular_velocity = angular_velocity *(1-ship_friction);
if(x<0) {
	x = room_width;
} else if(x>room_width) {
	x=0;
}

if(y<0) {
	y=room_height
} else if(y>room_height) {
	y = 0;
}
global.astSpawn++;
if(playerdeath == true) {
	image_alpha = clamp(image_alpha-0.05,0.5,1);
} else {
	image_alpha = clamp(image_alpha+0.05,0.5,1);
}
show_debug_message(playerdeath);
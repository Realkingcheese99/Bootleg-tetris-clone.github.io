x+=xVel;
y+=(grav-yVel);
time += 0.04;
grav = time*5;
image_angle = radtodeg(arctan((-grav+yVel)/xVel));
if(sign(xVel) == 1) {
	image_angle += 180;
}
if(y>room_height) {
	instance_destroy(self);
}
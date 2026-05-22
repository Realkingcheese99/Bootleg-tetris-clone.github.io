/*if place_meeting(x, y, all) {
show_debug_message("hit prophecy");
x = x - playerSpd;
}
*/

//
if(dashing==true || (!keyboard_check(ord("A")) && !keyboard_check(ord("D")))) {
	xVel = xVel * (1-playerFriction);
}
if(abs(xVel)<=playerSpd) {
	dashing=false;
}
global.time++;
if(!place_meeting(x+xVel,y,obj_border)) {
x=x+xVel;
y=y+yVel;
}
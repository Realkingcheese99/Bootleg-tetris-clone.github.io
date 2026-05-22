/*if keyboard_check(ord("W")) {
	if(!place_meeting(x,y-playerSpd,obj_prophecy)) {
	y=y-playerSpd;
	}
} else if keyboard_check(ord("S")) {
	if(!place_meeting(x,y+playerSpd,obj_prophecy)) {
	y=y+playerSpd;
	}
}
*/
if(global.death == false) {
if(keyboard_check(ord("A")) && dashing == false) {
	if(!place_meeting(x-playerSpd,y,obj_border)) {
	//x=x-playerSpd;
	xVel = -playerSpd;
	}
} else if(keyboard_check(ord("D"))&& dashing == false) {
	if(!place_meeting(x+playerSpd,y,obj_border)) {
	//x=x+playerSpd;
	xVel = playerSpd;
	}
}
}
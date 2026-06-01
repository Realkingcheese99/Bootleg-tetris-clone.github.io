if(!place_meeting(x+xVel,y,obj_dialogueInteract)) {
x=x+xVel;
}
if(!place_meeting(x,y+yVel,obj_dialogueInteract)) {
y=y+yVel;
}
xVel = xVel * (1-player_friction);
yVel = yVel * (1-player_friction);
//show_debug_message(working_directory);
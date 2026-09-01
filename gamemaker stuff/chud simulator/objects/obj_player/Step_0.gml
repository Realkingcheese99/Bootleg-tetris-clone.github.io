x+=xVel;
xVel*=(1-fric);
if(xVel != 0) {
global.playerData = [x,y, sprite_width, sign(xVel)];
}
if(global.showerStatus == true) {
x=clamp(x,room_width-400,room_width-sprite_width)
}
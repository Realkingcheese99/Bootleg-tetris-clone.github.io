timer++;
if(y>0 && y<room_height && x>0 && x<room_width) {
	offScreen = false;
}
object_set_sprite(obj_ast, sprite);
image_angle += spin;
x+=xVel;
y+=yVel;

if(ast_health<=0) {
	if(size < 2) {
		for(i = 0; i<global.split[size]; i++) {
			xMod = sin((irandom(1)*pi)-pi/2)
			yMod = sin((irandom(1)*pi)-pi/2)
			xOffset = xMod * random(splitRange);
			yOffset = yMod * random(splitRange);
			instance_create_layer(x+xOffset,y+yOffset,"Instances",obj_ast, {
				ast_health : global.healths[size+1],
				size : size+1,
				angle : -arctan(yOffset/xOffset)
			})
		}
	}
	scr_enemyDeath(x,y,size+1);
	global.points += global.pointBonus[size];
	instance_destroy(self);
}

if(timer>600 && offScreen == true) ||(offScreen == false && ((y<-100 || y>room_height+100) || (x<-100 || x>room_width+100))) {
	instance_destroy();
}
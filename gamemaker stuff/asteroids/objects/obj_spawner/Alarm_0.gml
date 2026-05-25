size = irandom(2);
_targetX = random_range(room_width/4,3*room_width/4);
_targetY = random_range(room_height/4,3*room_height/4);
pos = global.astSpawn % 8;
if(pos == 0 || pos == 1 || pos == 2 || pos == 5 || pos == 6 || pos == 7) {
	if(pos % 2 == 0) {
		y = -yPos;
	} else {
		y = room_height + yPos;
	}
} else {
	y = random_range(-yPos,room_height+yPos);
}
if(pos == 0 || pos == 2 || pos == 3 || pos == 4 || pos == 5 || pos == 7) {
	if(pos % 2 == 0) {
		x = -xPos;
	} else {
		x = room_height + xPos;
	}
} else {
	x = random_range(-xPos, room_height + xPos);
}
/*
 x = random(1366);
y = random(700);
*/
instance_create_layer(x,y,"Instances",obj_ast, {
	size : size,
	ast_health : global.healths[size],
	targetX : _targetX,
	targetY : _targetY,
	angle : arctan((_targetY-y)/(_targetX-x))
});
alarm[0] = interval;

/*size = irandom(2);
_targetX = random_range(room_width/4,3*room_width/4);
_targetY = random_range(room_height/4,3*room_height/4);
x = random(1366);
y = random(700);
instance_create_depth(x,y,0,obj_ast, {
	size : size,
	ast_health : global.healths[size],
	targetX : _targetX,
	targetY : _targetY,
	angle : arctan((_targetY-y)/(_targetX-x))
})
*/
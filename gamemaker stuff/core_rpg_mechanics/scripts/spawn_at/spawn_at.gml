function spawn_at(_x, _y, _health, _type){
	for(var i =0; i<array_length(obj_battle_box.entities); i++) {
		if(entities[i][entityData.type] == -1) {
			obj_battle_box.entities[i][entityData.xpos] = _x;
			obj_battle_box.entities[i][entityData.ypos] = _y;
			obj_battle_box.entities[i][entityData.hp] = _health;
			obj_battle_box.entities[i][entityData.type] = _type;
		}
	}

	for(var qx = 0; qx < obj_battle_box.slices; qx++){
	for(var qy = 0; qy < obj_battle_box.slices; qy++) {
		obj_battle_box.grid[qx][qy] = -1;
	}
}


for(var i = 0; i < array_length(obj_battle_box.entities); i++) {
	if(obj_battle_box.entities[i][entityData.xpos] != -1 and obj_battle_box.entities[i][entityData.ypos] != -1) {
		obj_battle_box.grid[obj_battle_box.entities[i][entityData.xpos]][obj_battle_box.entities[i][entityData.ypos]] = i;
	}
}

}
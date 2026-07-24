partymember = -1
for(var i = 0; i < array_length(entities); i++) {
	if(entities[i][entityData.type] == 1500+obj_battle_menu.currentpartymember) {
		partymember = i exit;
	}
}
show_debug_message(entities[35])
if(moving == true and steps > 0 and partymember != -1) {
if(keyboard_check(vk_left) and entities[partymember][entityData.xpos] > 0 and grid[entities[partymember][entityData.xpos]-1][entities[partymember][entityData.ypos]] == 0) {
	entities[partymember][entityData.xpos]--;
	steps--;
} else if(keyboard_check(vk_right) and entities[partymember][entityData.xpos] < slices-1 and grid[entities[partymember][entityData.xpos]+1][entities[partymember][entityData.ypos]] == 0) {
	entities[partymember][entityData.xpos]++;
	steps--;
} else if(keyboard_check(vk_up) and entities[partymember][entityData.ypos] > 0 and grid[entities[partymember][entityData.xpos]][entities[partymember][entityData.ypos]-1] == 0) {
	entities[partymember][entityData.ypos]--;
	steps--;
}else if(keyboard_check(vk_down) and entities[partymember][entityData.ypos] < slices-1 and grid[entities[partymember][entityData.xpos]][entities[partymember][entityData.ypos]+1] == 0) {
	entities[partymember][entityData.ypos]++;
	steps--;

}
}

for(var _x = 0; _x < slices; _x++){
	for(var _y = 0; _y < slices; _y++) {
		grid[_x][_y] = -1;
	}
}

for(var i = 0; i < 6; i++) {
	if(entities[i][entityData.xpos] != -1 and entities[i][entityData.ypos] != -1) {
		grid[entities[i][entityData.xpos]][entities[i][entityData.ypos]] = i;
	}
}
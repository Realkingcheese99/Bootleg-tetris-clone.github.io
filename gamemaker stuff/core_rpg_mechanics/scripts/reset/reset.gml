function reset(){
	for(var qx = 0; qx < obj_battle_box.slices; qx++){
	for(var qy = 0; qy < obj_battle_box.slices; qy++) {
		obj_battle_box.grid[qx][qy] = 0;
	}
}
}
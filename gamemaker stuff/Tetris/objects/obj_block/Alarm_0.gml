if(!place_meeting(x,y+global.blockSize,obj_block) && y+global.blockSize <= room_height) {
y=y+global.blockSize;
alarm[0] = fallSpd;
} else {
	instance = instance_place(x,y+global.blockSize,obj_block)
	if(instance != noone) {
		under = instance.placed;
	} else {
		under = false;
	}
	if(y+global.blockSize >= room_height || under) {
	global.blockPlace = true;
	
	placed = true;
	if(anchor == true) {
		scr_block_spawn();
	}
}
}
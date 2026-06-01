x = clamp(x, borderX1, borderX2);
if(global.blockPlace == true) {
	linecount = 0;
	if(x == borderX1) {
		for(i = 1; i<10; i++) {
			collision = instance_place(x+i*global.blockSize,y,obj_block);
			if(collision != noone) {
				linecount++;
				line[i] = collision;
				//show_debug_message(collision);
			} else {
				line[i] = -1;
			}
		}
		show_debug_message(linecount);
		if(linecount == 9) {
			for(i = 1; i<10;i++) {
			instance_destroy(line[i])
			instance_destroy(self);
			}
		}
	}
	global.blockPlace = false;
}
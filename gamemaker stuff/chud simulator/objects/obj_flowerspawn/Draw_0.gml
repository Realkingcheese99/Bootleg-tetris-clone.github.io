offset = 64
if(room==rm_back) {
	for(var i = 0; i < array_length(global.flowers_back); i++) {
		xpos = i
		if(xpos % 3 = 0 && xpos != 0) {
			xpos-=2
		}
		if(i%6 == 0 && i != 0) {
			if(i%12 == 0) {
				offset += 150
			}
			offset+=100
		}
		draw_sprite_ext(spr_flower1,1,offset+xpos*dx,y2,2,2,0,#FFFFFF,1)
	}
}
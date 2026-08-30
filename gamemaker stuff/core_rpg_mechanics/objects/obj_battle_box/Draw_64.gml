draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_rectangle(x,y,x+size,y+size,true);
for(var i = 1; i < slices; i++) {
	draw_line(x+i*size/slices,y,x+i*size/slices,y+size)
	draw_line(x,y+i*size/slices,x+size,y+i*size/slices)
}
for(var _x = 0; _x<slices; _x++) {
	for(var _y = 0; _y<slices; _y++) {
		if(grid[_x][_y]!=-1){
			draw_text_transformed(x+10+300*_x/6,y+10+300*_y/6,grid[_x][_y],0.5,0.5,0)
		}
		if(grid[_x][_y] == 4) {
			//draw_sprite_stretched(spr_enemy,0,x+1+300*_x/6,y+300*_y/6,300/slices+1,300/slices+1);
		}
	}
}

draw_text_transformed(x+500,y+250,$"Steps remaining: {steps}",0.25,0.25,0);
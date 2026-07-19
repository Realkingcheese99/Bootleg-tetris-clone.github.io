draw_rectangle(x,y,x+size,y+size,true);
for(var i = 1; i < slices; i++) {
	draw_line(x+i*size/slices,y,x+i*size/slices,y+size)
	draw_line(x,y+i*size/slices,x+size,y+i*size/slices)
}
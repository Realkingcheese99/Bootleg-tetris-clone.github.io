x1 = x;
y1 = y;
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_sprite(spr_catalyst,0,x-64,y-16)
for(i = 0; i < c; i++){ 
	if(i == select or i == 10-currentpartymember) {
		colour = #FFFFFF;
	} else {
		colour = #888888;
	}
	draw_line_colour(x1,y1,x1+i*length*cos(i*deltaangle),y1-i*length*sin(i*deltaangle),colour,colour);
	//draw_line(x1,y1,x1+sign(sin(i*deltaangle))*i*sf*length/2,y1+sign(sin(i*deltaangle))*i*length/(2*tan((i*deltaangle)%pi)));
	draw_line_colour(x1,y1,x1+lengthdir_x(length*i/2,radtodeg(i*deltaangle)-90),y1+lengthdir_y(length*i/2,radtodeg(i*deltaangle)-90),colour,colour);
	
	buttonx1 = x1+lengthdir_x(length*i/2,radtodeg(i*deltaangle)-90);
	buttony1 = y1+lengthdir_y(length*i/2,radtodeg(i*deltaangle)-90);
	draw_text_transformed_colour(x1,y1,buttons[i],i/10,i/10,i*radtodeg(deltaangle)+180,colour,colour,colour,colour,1);
	//draw_text_transformed(x1,y1,$"angle: {i*radtodeg(deltaangle)}",0.3,0.3,0);
	x1 += i*length*cos(i*deltaangle);
	y1 -= i*length*sin(i*deltaangle);
	draw_line_colour(x1,y1,x1+lengthdir_x(length*(i+1)/2,radtodeg((i+1)*deltaangle)-90),y1+lengthdir_y(length*(i+1)/2,radtodeg((i+1)*deltaangle)-90),colour,colour);
	draw_line_colour(buttonx1,buttony1,x1+lengthdir_x(length*(i+1)/2,radtodeg((i+1)*deltaangle)-90),y1+lengthdir_y(length*(i+1)/2,radtodeg((i+1)*deltaangle)-90),colour,colour);
	//draw_text_transformed()
}
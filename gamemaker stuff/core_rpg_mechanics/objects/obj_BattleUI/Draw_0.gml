draw_set_font(fnt_common);
draw_rectangle(10,2*room_height/3,room_width-10,room_height-10,true);
draw_text_ext_transformed(20,2*room_height/3+10,displayText,-1,room_width,0.5,0.5,0);

if(playerTurn == true) {
if(menu == 0) {
for(i = 0; i<4; i++) {
	if(ui == i) {
	draw_rectangle_colour(10+i*(buttonWidth*(buttonmargin+1)),4*room_height/5,10+i*(buttonWidth*(buttonmargin+1))+buttonWidth, 4*room_height/5+buttonHeight,#FFFFFF,#FFFFFF,#FFFFFF,#FFFFFF,true);
} else {
	draw_rectangle_colour(10+i*(buttonWidth*(buttonmargin+1)),4*room_height/5,10+i*(buttonWidth*(buttonmargin+1))+buttonWidth, 4*room_height/5+buttonHeight,#808080,#808080,#808080,#808080,true);
}
	draw_text_ext_transformed(20+i*(buttonWidth*(buttonmargin+1)),4*room_height/5+10,buttons[i],-1,buttonWidth,0.5,0.5,0);
}
} else if(menu == 1 || menu == 5) {
	draw_rectangle(endpoint,room_height/3-obj_enemy.sprite_width/4,endpoint+3*obj_enemy.sprite_width/2,room_height/3+5*obj_enemy.sprite_width/4,true);
}
}
//draw_healthbar(10,room_height/2,110,room_height/2+20,75,#1c0000,#FF0000,#00FF00,0,true,true);
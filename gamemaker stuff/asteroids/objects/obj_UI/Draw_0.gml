draw_set_font(fnt_common);
if(room==r_game) {
draw_text_transformed(32,0,string_concat("", global.points),0.5,0.5,0);
for(i = 0; i < global.playerhealth; i++) {
draw_sprite_ext(spr_ship,0,18+i*20,64,0.5,0.5,90,#FFFFFF,1);
}
} else if(room==death) {
	draw_text_transformed(2*room_width/5,room_height/4,"You Died!",1,1,0);
	draw_text_transformed(1*room_width/3,room_height/4+128,string_concat("Your Score Was:"),1,1,0);
	draw_text_transformed(room_width/2-(string_width(global.points)/4),room_height/4+192,global.points,1,1,0);
	draw_text_transformed(room_width/2-0.45*string_width("Press SPACE to restart!"),room_height/4+320,"Press SPACE to restart!",1,1,0);
}
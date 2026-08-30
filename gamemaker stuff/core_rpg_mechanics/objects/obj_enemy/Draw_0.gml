draw_self();
if(room == battle) {
	if(global.agency == true) {
		draw_healthbar(x,y+1.5*sprite_height,x+sprite_width,y+1.7*sprite_height,pHealth,#800000,#00FF00,#00FF00,0,true,true)
show_debug_message(string_concat(id, "; ",enemyHealth))
}
}
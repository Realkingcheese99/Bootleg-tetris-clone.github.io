if(keyboard_check(ord("Z"))) {
	if(place_meeting(x+sprite_width/2,y+3*sprite_height/4,obj_tap))  {
	if(global.showerStatus == false) {
		global.showerStatus = true;
		instance_create_depth(1216,192,0,obj_spawner)
	} else {
		global.showerStatus = false;
		instance_destroy(obj_spawner);
	}
	} else if(place_meeting(x,y,obj_waterstorage)) {
		instance_destroy(obj_menu_box);
		instance_create_depth(x+100,y,0,obj_menu_box, {
			type : 1
		});
	}
}

if(keyboard_check(ord("'C"))){
	render_dialogue(global.dialogue,1,2)
}
if(global.death == false) {
	if(round(random(chance)) != chance){
instance_create_depth(random(1000) + 183,0,0,obj_pickup);
	} else {
		instance_create_depth(random(1000) + 183,0,0,obj_health, {
			a : 1
			}
			);
	}
alarm[0] = interval;
}
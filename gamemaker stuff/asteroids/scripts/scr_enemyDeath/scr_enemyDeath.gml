function scr_enemyDeath(astX,astY,scale){
for(i = 0; i<40; i++) {
	instance_create_layer(astX,astY,"Instances",obj_particle, {
		size : 0,
		spawnX : astX,
		spawnY : astY,
		lifetime : 50/scale,
		maxSpd : 10
		
	}
	);
}
for(i = 0; i<30; i++) {
	instance_create_layer(astX,astY,"Instances",obj_particle, {
		size : 1,
		spawnX : astX,
		spawnY : astY,
		lifetime : 40/scale,
		maxSpd : 7
		
	}
	);
}
for(i = 0; i<20; i++) {
	instance_create_layer(astX,astY,"Instances",obj_particle, {
		size : 2,
		spawnX : astX,
		spawnY : astY,
		lifetime : 50/scale,
		maxSpd : 5
		
	}
	);
}
for(i = 0; i<15; i++) {
	instance_create_layer(astX,astY,"Instances",obj_particle, {
		size : 3,
		spawnX : astX,
		spawnY : astY,
		lifetime : 60/scale,
		maxSpd : 3
		
	}
	);
}
}
global.enemyInstances = [];
for(i=0;i<array_length(global.enemies);i++) {
global.enemyInstances[i] = instance_create_depth(room_width+100,room_height/3,0,obj_enemy, {
	enemyType : global.enemies[i],
	enemyID : i
});
}

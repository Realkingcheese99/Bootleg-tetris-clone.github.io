if(!variable_instance_exists(id,"enemyID")) {
	enemyID = -1;
}

if(!variable_instance_exists(id,"enemyType")) {
	enemyType = -1;
}
endpoint = (room_width-sprite_width)/2 - sprite_width*4 +4*enemyID*sprite_width +(3-array_length(global.enemies))*sprite_width*2;
global.enemyPosition = [];
global.agency = false;
enemyHealth = 20;
maxHealth = 20;
pHealth = (enemyHealth/maxHealth)*100
global.enemyInstances[enemyID] = id;
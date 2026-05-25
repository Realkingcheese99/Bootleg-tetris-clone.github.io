if(playerdeath == false) {
global.playerhealth--;
if(global.playerhealth == 0) {
	room_goto(death);
} else {
alarm[1] = respawnTime;
playerdeath = true;
scr_enemyDeath(x,y,3);
}
}
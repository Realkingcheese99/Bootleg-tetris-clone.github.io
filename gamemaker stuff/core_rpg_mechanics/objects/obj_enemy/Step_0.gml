if(room == battle) {

if(x>endpoint) {
	x-=50;
} else {
	global.enemyPosition[enemyID] = x;
	if(enemyID == 0) {
		global.agency = true;
	}
}

}
pHealth = (enemyHealth/maxHealth)*100
if(enemyHealth<=0) {
	instance_destroy(self);
}
//enums
//change in steps from certain things
enum stepchange {
	nextTurn = 12,
	attack = 2,
	defend = 6
}
/*
enemies: 0-499
projectiles/effects: 500-999
hazards: 1000-1499
other: 1500-1999
*/

enum entityTypes {
	//enemies
	miserabulb,
	//proj/eff
	arrow_diagonal_f = 500,
	//hazards
	wood = 1000,
	//other
	pm1 = 1500,
	pm2,
	pm3
}

enum entityData {
	xpos,
	ypos,
	hp,
	type
}
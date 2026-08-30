if(nextturn == true) {
	if(obj_battle_menu.currentpartymember < 2) {
	obj_battle_menu.currentpartymember++;
	} else {
		steps+=stepchange.nextTurn;
	}
	nextturn = false;
}
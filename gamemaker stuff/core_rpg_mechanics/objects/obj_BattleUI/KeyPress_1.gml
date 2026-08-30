if(keyboard_check(vk_left)) {
	if(menu == 0) {
	if(ui>0) {
		ui--;
	} else {
		ui = 3;
	}
	} else if(menu == 1 || menu == 5) {
		if(selectedEnemy>0) {
		selectedEnemy--;
		} else {
			selectedEnemy = array_length(global.enemies)-1;
		}
		
	}
} else if(keyboard_check(vk_right)) {
	if(menu == 0) {
	if(ui<3) {
		ui++;
	} else {
		ui = 0;
	}
} else if(menu == 1 || menu == 5) {
			if(selectedEnemy<array_length(global.enemies)-1) {
		selectedEnemy++;
		} else {
			selectedEnemy = 0;
		}
		
	}
}

if(keyboard_check(ord("Z"))) {
	if(menu == 0){
		menu = ui+1;
	}
	if(menu == 1) {
		text = "Choose an enemy to attack.";
		j = 0;
		alarm[0] = textSpd
		menu = 5;
	} else if(menu == 5) {
		/*
		with(global.enemyInstances[selectedEnemy-1]) {
			show_debug_message(enemyHealth);
			//enemyHealth = 10;
		}
		*/
	//	variable_instance_set(global.enemyInstances[selectedEnemy],"enemyHealth",10);
		global.enemyInstances[selectedEnemy].enemyHealth -= 3;
		show_debug_message(global.enemyInstances[selectedEnemy]);
		playerTurn = false;
	}
} else if(keyboard_check(ord("X"))) {
	menu = 0;
	text = "<enemy> attacks! What will <player> do?";
	j = 0;
	alarm[0] = textSpd;
}
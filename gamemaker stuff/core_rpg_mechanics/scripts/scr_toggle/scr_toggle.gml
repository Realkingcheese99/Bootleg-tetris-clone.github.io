function toggle(input){
	if(is_bool(input)) {
		if(input == true) {
			input = false;
		} else {
			input = true;
		}
	} else {
		input = abs(input-1);
	}
return input
}
if(placed == false) {
if(keyboard_check(vk_left)) {
	x -= global.blockSize;
} else if(keyboard_check(vk_right)) {
	x += global.blockSize;
}
}
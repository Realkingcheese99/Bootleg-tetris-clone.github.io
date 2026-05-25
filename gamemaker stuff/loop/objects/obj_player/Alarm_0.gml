if(z<string_length(global.dialogue[0])) {
	z++;
	global.currentDialogue = string_copy(global.dialogue[0],1,z);
}
alarm[0] = talkSpd;
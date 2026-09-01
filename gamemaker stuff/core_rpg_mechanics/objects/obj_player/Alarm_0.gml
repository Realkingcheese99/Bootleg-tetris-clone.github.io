if(global.dialogueActive==true) {
if(z<string_length(global.dialogue[global.dialogueLine])) {
	z++;
	global.currentDialogue = string_copy(global.dialogue[global.dialogueLine],1,z);
	if(array_contains(pauseChars,string_char_at(global.dialogue[global.dialogueLine],z))) {
		alarm[1] = 6*talkSpd;
	} else {
	alarm[1] = talkSpd;
	}
}
global.dialogueActive2 = true;
} else {
	global.dialogueActive2 = false;
}
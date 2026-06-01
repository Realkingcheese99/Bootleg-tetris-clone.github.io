if(global.dialogueActive==true) {
if(z<string_length(global.dialogue[global.dialogueLine])) {
	z++;
	global.currentDialogue = string_copy(global.dialogue[global.dialogueLine],1,z);
	alarm[0] = talkSpd;
}
global.dialogueActive2 = true;
} else {
	global.dialogueActive2 = false;
}
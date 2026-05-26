spd = 5;
xVel = 0;
yVel = 0;
player_friction = 1;
dialogueRange = 20;
i =0;
//global.dialogue = ["the quick brown fox jumps over the lazy dog", "line 2", "line 3", "line 4", "line 5",];
global.dialogue = ["deltarune tomorrow", "sea of sorrow tomorrow", "fraud tomorrow", "human i remember you're genocides"];
dialogueFile = file_text_open_read(working_directory + "dialogue.txt")
show_debug_message(working_directory + "dialogue.txt");
while (!file_text_eof) {
	//array_push(global.dialogue,file_text_read_string(dialogueFile));
	if(file_text_open_read(dialogueFile) != -1) {
		show_debug_message(file_text_read_string(dialogueFile));
	file_text_readln(dialogueFile);
	} else {
		show_debug_message(i);
	}
	i++
}
file_text_close(dialogueFile);
show_debug_message(string_concat("dialogue: ",global.dialogue));
global.currentDialogue = "";

z = 0;
talkSpd = 2;
//alarm[0] = talkSpd;
global.dialogueActive = false;
global.dialogueLine = 0;
global.dialogueActive2 = false;

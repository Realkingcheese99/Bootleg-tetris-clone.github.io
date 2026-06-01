spd = 5;
xVel = 0;
yVel = 0;
player_friction = 1;
dialogueRange = 20;
i =0;
dir = 0;


global.dialogue = [];
dialogueFileLocation = working_directory + "dialogue.txt";
dialogueFile = file_text_open_read(dialogueFileLocation);
if(file_exists("dialogue.txt")) {
	show_debug_message("file is there");
} else {
	show_debug_message("womp womp");
}
show_debug_message(working_directory);
while (!file_text_eof(dialogueFile)) {
	if(file_text_open_read(dialogueFileLocation) != -1) {
		global.dialogue[i] = file_text_read_string(dialogueFile);
		file_text_readln(dialogueFile);
		
	
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
global.playerHealth = 20;

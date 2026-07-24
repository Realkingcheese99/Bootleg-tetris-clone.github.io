guiW = display_get_gui_width();
guiH = display_get_gui_height();

if(!variable_instance_exists(self,"start")){
	start = 0;
}
if(!variable_instance_exists(self,"length")){
	length = 1;
}
dialog = [];
array_copy(dialog,0,global.dialogue,start,length);
//show_debug_message(dialog);
page = 0;
drawnText = "";
wrappedText = "";
currentLine = "";

//box
boxW = guiW*0.6
boxX = 2*(guiW-boxW)/4
boxY = guiH*0.7
boxH = guiH*0.2
currentChar = 0;
typeSpd = 0.5;
textPause = 0;
puncTime = 15;
autoPage = false;
lineBreak = boxW - 15;
breakTrigger = false;
portraitString = "0";
nameString = ""
punctuations =
[
	".",
	",",
	"!",
	"?"
]

keystringList =
[
	"L",
	"P"
]

global.interact = 1;
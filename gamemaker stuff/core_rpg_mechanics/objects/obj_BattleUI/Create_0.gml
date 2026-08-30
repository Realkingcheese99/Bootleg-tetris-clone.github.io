textSpd = 1;
j = 1;
text = "<enemy> attacks! What will <player> do?"
displayText = "";
alarm[0] = textSpd;
buttonmargin = 10/9-1;
buttons = ["Attack", "Spells","Items", "Defend"];
buttonWidth = (room_width-20)/(4+3*buttonmargin);
buttonHeight = room_height/5-10;
show_debug_message(1/(1+buttonmargin));
ui = 0;
menu = 0;
playerTurn = true;
selectedEnemy = 0;
framecount = 0;
//var playerTurn = true;
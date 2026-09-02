draw_self();
draw_set_font(fnt_common);
if(global.dialogueActive2 == true) {
draw_rectangle_color(textX,textY,textX+room_height,room_height*0.99,#000000,#000000,#000000,#000000,false);
draw_rectangle(textX,textY,textX+room_height,room_height*0.99,true);
draw_text_ext_transformed(textX,textY,global.currentDialogue,-1,2*room_height,0.5,0.5,0);
}
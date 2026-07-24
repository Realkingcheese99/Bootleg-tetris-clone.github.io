//dialogue
global.dialogue = [];
var file = "dialogue.json";

if(file_exists(file)) {
var buffer = buffer_load(file);
var jsonDialogue = buffer_read(buffer, buffer_string);
buffer_delete(buffer);
global.dialogue = json_parse(jsonDialogue);
}


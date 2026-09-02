function render_dialogue(_dialogue, _startLine, _length)
{
	if (instance_exists(obj_dialogue)) return;
	var _concatDialogue = [];
	array_copy(_concatDialogue, 0, _dialogue, _startLine, _length) 
	var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
	_inst.dialogue = _concatDialogue;
	_inst.page = 0;
}
function createDialog(_dialog, _startLine, _length)
{
	if (instance_exists(obj_dialogue)) return;
	var _concatDialog = [];
	array_copy(_concatDialog, 0, _dialog, _startLine, _length) 
	var _inst = instance_create_depth(0, 0, 0, obj_dialogue);
	_inst.dialog = _concatDialog;
	_inst.page = 0;
}
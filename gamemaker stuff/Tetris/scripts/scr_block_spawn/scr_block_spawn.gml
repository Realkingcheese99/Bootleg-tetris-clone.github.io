function scr_block_spawn(){
 instance_create_depth(room_width/2,0,0,obj_block, {
	 anchor: true
 });
  instance_create_depth(room_width/2+global.blockSize,0,0,obj_block, {
	 anchor: false
 });
}
//if E pressed, add extra life to map and destroy chests
if(keyboard_check(ord("E"))){
	
	instance_destroy(other);
	instance_destroy(obj_good_chest);
	//TODO: Change Background
}
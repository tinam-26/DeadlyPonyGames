//if E pressed, add extra life to map and destroy chests
vspeed = 0; 
if(keyboard_check(ord("E"))){
	global.characterLives += 1; 
	instance_destroy(other);
	instance_destroy(obj_bad_chest);
	//TODO: Change Background
	
}
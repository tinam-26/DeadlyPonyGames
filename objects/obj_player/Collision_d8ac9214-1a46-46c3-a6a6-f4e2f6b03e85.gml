//if E pressed, add extra life to map and destroy chests
global.memory_flag = 1
global.good_count++;

if(keyboard_check(ord("E"))){
	
	global.characterLives += 1; 
	instance_destroy(other);
	instance_destroy(obj_bad_chest);
	//TODO: Change Background
	
	audio_play_sound(snd_chest, 10, false); 
}
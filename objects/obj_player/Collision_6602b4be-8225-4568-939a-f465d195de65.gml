global.memory_flag = 2;

//if E pressed, add extra life to map and destroy chests
if(keyboard_check(ord("E"))){
	
	//spawn extra enemies
	if(room == rm_level1){
		instance_create_layer(640, 576, "Layer_Enemy", obj_enemy_ferris_wheel)
	}
	
	else if(room == rm_level2){
		instance_create_layer(1220, 200, "Layer_Enemy", obj_enemy_paint)
		instance_create_layer(1465, 550, "Layer_Enemy", obj_enemy_paint)
	}
	
	instance_destroy(other);
	instance_destroy(obj_good_chest);
	//TODO: Change Background
}
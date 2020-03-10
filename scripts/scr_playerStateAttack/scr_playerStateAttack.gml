obj_player.has_weapon = true; 

if(keyboard_check(vk_right)){
	//image_speed = 0; 
	if(room == rm_level1){
		sprite_index = spr_player_attacking;
		image_index = 0;
	}else if(room == rm_level2){
		sprite_index = spr_player_attacking;
		image_index = 1;
	}else if(room == rm_level3){
		sprite_index = spr_player_attacking;
		image_index = 2;
	}
}else{
	//image_speed = 0; 
	if(room == rm_level1){
		sprite_index = spr_player_attacking_left;
		image_index = 0;
	}else if(room == rm_level2){
		sprite_index = spr_player_attacking_left;
		image_index = 1;
	}else if(room == rm_level3){
		sprite_index = spr_player_attacking_left;
		image_index = 2;
	}
}


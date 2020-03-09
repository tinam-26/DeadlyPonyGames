//jumping
if keyboard_check(vk_up){
	if(gravity == 0){
		vspeed = -20;
	}
}

//left + right movement
if(!keyboard_check(vk_right) && !keyboard_check(vk_left)){
	hspeed = 0;
	image_speed = 0;
}else{
	hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * 5 
	image_speed = 1;
	if(keyboard_check(vk_right)){
		sprite_index = spr_player
	}
	else{
		sprite_index = spr_player_left
	}
}

//stay in jump sprite until landed
if(gravity == 1){
	image_speed = 0
	sprite_index = spr_player_jumping
	image_index = 0
}

obj_weapon_parent.image_speed = 0; 
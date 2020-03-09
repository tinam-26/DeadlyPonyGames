//jumping
if keyboard_check(vk_up){
	if(gravity == 0){
		vspeed = -20;
	}
}

//stay in jump sprite until landed
if(gravity == 1){
	image_speed = 0
	sprite_index = spr_player_jumping
	image_index = 0
}

obj_weapon_parent.image_speed = 0; 
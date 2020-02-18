//jumping
if keyboard_check(vk_up){
	if(gravity == 0){
		vspeed = -15;
	}
}

//left + right movement
if(!keyboard_check(vk_right) && !keyboard_check(vk_left)){
	hspeed = 0; 
}else{
	hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * 5 
}

obj_weapon_parent.image_speed = 0; 
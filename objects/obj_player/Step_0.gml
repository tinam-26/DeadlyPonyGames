/// @description Insert description here
// You can write your code in this editor

//note: has a spr_box as a collision mask in order to allows for proper collisions

//left + right movement
if(!keyboard_check(vk_right) && !keyboard_check(vk_left)){
	hspeed = 0; 
}else{
	hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * 5 
}

//jumping
if keyboard_check(vk_up){
	if(gravity == 0){
		vspeed = -15;
	}
}

//checking collisions
if vspeed != 0 then scr_verticalCollision()
if hspeed != 0 then scr_horizontalCollision()
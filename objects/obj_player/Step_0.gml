//note: has a spr_box as a collision mask in order to allows for proper collisions

//gravity
if instance_place(x, y+1, obj_platforms){
	gravity = 0;
}
else {
	gravity = 1;
}

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

//check if player attacks
if(keyboard_check(ord("W")) && has_weapon){
	alarm[0] = 60;
	key_attack = true; 
	state = PLAYERSTATE.ATTACK;
	can_attack = false; 
}else{
	key_attack = false;
}

//do they attack? let's find out
switch(state){
	case PLAYERSTATE.FREE: scr_playerStateFree(); show_debug_message("free") break;
	case PLAYERSTATE.ATTACK: scr_playerStateAttack(); show_debug_message("attack") break;
}

//left + right movement
if(!keyboard_check(vk_right) && !keyboard_check(vk_left)){
	hspeed = 0;
	image_speed = 0;
}else{
	hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * 5;
	image_speed = 1;
	if(keyboard_check(vk_right)){
		if(state == PLAYERSTATE.FREE){
			if(has_weapon){
				if(room == rm_level1){
					sprite_index = spr_player_with_cotton_candy;
				}else if(room == rm_level2){
					sprite_index = spr_player_with_paint_brush;
				}else if(room == rm_level3){
					sprite_index = spr_player_with_bone_left;
				}
			}else{
				sprite_index = spr_player;
			}
		}else{
			image_speed = 0; 
			if(room == rm_level1){
				sprite_index = spr_player_attacking;
				image_index = 1;
			}else if(room == rm_level2){
				sprite_index = spr_player_attacking;
				image_index = 2;
			}else if(room == rm_level3){
				sprite_index = spr_player_attacking;
				image_index = 3;
			}
		}
	}
	else {
		if(state == PLAYERSTATE.FREE){
			if(has_weapon){
				if(room == rm_level1){
					sprite_index = spr_player_with_cotton_candy_left;
				}else if(room == rm_level2){
					sprite_index = spr_player_with_paint_brush_left;
				}else if(room == rm_level3){
					sprite_index = spr_player_with_bone_left;
				}
			}else{
				sprite_index = spr_player;
			}
		}else{
			image_speed = 0; 
			if(room == rm_level1){
				sprite_index = spr_player_attacking_left;
				image_index = 1;
			}else if(room == rm_level2){
				sprite_index = spr_player_attacking_left;
				image_index = 2;
			}else if(room == rm_level3){
				sprite_index = spr_player_attacking_left;
				image_index = 3;
			}
		}
	}
}

//checking collisions
if vspeed != 0 then scr_verticalCollision()
if hspeed != 0 then scr_horizontalCollision()


//check if collided with chest (is from FSM workshop)
var bestDistance = maxGrabDistance;
grabTarget = noone;
	
with obj_good_chest{
	var thisDistance = point_distance(x,y,other.x,other.y);
			
	if thisDistance < bestDistance {
		bestDistance = thisDistance
		//In this context, 'other' is obj_player
		other.grabTarget = id
	}
}

with obj_bad_chest{
	var thisDistance = point_distance(x,y,other.x,other.y);
			
	if thisDistance < bestDistance {
		bestDistance = thisDistance
		//In this context, 'other' is obj_player
		other.grabTarget = id
	}
}
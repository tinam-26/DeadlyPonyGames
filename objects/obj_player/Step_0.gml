//note: has a spr_box as a collision mask in order to allows for proper collisions

//gravity
if instance_place(x, y+1, obj_platforms){
	gravity = 0;
}
else {
	gravity = 1;
}

//check if player attacks
if(keyboard_check(ord("W")) && has_weapon){
	key_attack = true; 
	state = PLAYERSTATE.ATTACK;
}else{
	key_attack = false;
}

//do they attack? let's find out
switch(state){
	case PLAYERSTATE.FREE: scr_playerStateFree(); show_debug_message("free") break;
	case PLAYERSTATE.ATTACK: scr_playerStateAttack(); show_debug_message("attack") break;
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
//note: has a spr_box as a collision mask in order to allows for proper collisions

//check if player attacks
if(keyboard_check(ord("W") && has_weapon)){
	key_attack = true; 
	state = PLAYERSTATE.ATTACK;
}else{
	key_attack = false; 
}

//gravity
if instance_place(x, y+1, obj_platforms){
	gravity = 0;
}
else {
	gravity = 1;
}

//do they attack? let's find out
switch(state){
	case PLAYERSTATE.FREE: scr_playerStateFree(); break;
	case PLAYERSTATE.ATTACK: scr_playerStateAttack(); break;
}

//checking collisions
if vspeed != 0 then scr_verticalCollision()
if hspeed != 0 then scr_horizontalCollision()



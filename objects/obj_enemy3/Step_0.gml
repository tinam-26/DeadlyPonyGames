if vspeed != 0 then scr_verticalCollision()
if hspeed != 0 then scr_horizontalCollision()

if(enemy_health <= 0){
	instance_destroy(self); 
}


if(obj_player.state == PLAYERSTATE.ATTACK){
	//move away from player
	//if player hit enemy 
		//move twenty pixel the other direction 
	if(place_meeting(self.x-1, self.y, obj_player)){
		x += 20; 	
	}else if(place_meeting(self.x + 1, self.y, obj_player)){
		x -= 20; 
	}
}
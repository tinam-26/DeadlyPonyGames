if vspeed != 0 then scr_verticalCollision()
if hspeed != 0 then scr_horizontalCollision()

if(enemy_health <= 0){
	instance_destroy(self); 
}



//if player hit enemy 
	//move twenty pixel the other direction 
if(place_meeting(self.x - 100, self.y, obj_player)){
	vspeed = -vspeed; 	
}else if(place_meeting(self.x + 100, self.y, obj_player)){
	vspeed = -vspeed;  
}

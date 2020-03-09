if vspeed != 0 then scr_verticalCollision()
if hspeed != 0 then scr_horizontalCollision()

if(enemy_health <= 0){
	instance_destroy(self); 
}

//enemy follows player
if(self.x > obj_player.x){
	hspeed = enemy_speed;
	if(point_distance(self.x, self.y, obj_player.x, obj_player.y) < 30){
		hspeed = enemy_speed * 2;
	}
}else if(self.x < obj_player.x){
	hspeed = -enemy_speed;  
	if(point_distance(self.x, self.y, obj_player.x, obj_player.y) < 30){
		hspeed = enemy_speed * -2;
	}
}
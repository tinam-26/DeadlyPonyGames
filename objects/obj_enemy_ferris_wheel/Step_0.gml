image_angle -= 5;

if vspeed != 0 then scr_verticalCollision()
//if hspeed != 0 then scr_horizontalCollision()

if(enemy_health <= 0){
	instance_destroy(self); 
}

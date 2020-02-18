if(collidedPlayer){
	//CANNOT COLLIDE WITH PLAYER; player will not be able to move correctly
	x = obj_player.x;
	y = obj_player.y - 45; 
}

if(obj_player.key_attack && collidedPlayer){
	//polar conversion becuase let's face it: math is hell
	
	rot_theta += 5; 
	
	x = obj_player.x + lengthdir_x(rot_radius, rot_theta); 
	y = obj_player.y - lengthdir_y(rot_radius, rot_theta);
}
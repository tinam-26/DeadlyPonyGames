//kill enemy if jumped on
if (vspeed > 0  && y <= (other.y - 256)){
	instance_destroy(other);
}

//lose life if none of above
else {
	if(state == PLAYERSTATE.ATTACK){
		other.enemy_health -= 50; 
	}else{
		global.characterLives += real(-1);
	
		if(global.characterLives > 0)
		{
			x = xstart;
			y = ystart;
		
			room_restart();
		}
	
		else
		{
			global.is_game_over = 1;
	
			alarm_set(1, 120);
		}
	}
}
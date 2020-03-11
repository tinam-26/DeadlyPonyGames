//kill enemy if jumped on
if (vspeed > 0  && y <= (other.y - 128)){
	instance_destroy(other);
} else if(state == PLAYERSTATE.ATTACK){
		other.enemy_health -= 50; 
}else{
	//lose life if none of above
	global.characterLives += real(-1);
	
	if(global.characterLives > 0)
	{
		x = xstart;
		y = ystart;
		
		room_restart();
	}
	else
	{
		game_end(); 
	}
}

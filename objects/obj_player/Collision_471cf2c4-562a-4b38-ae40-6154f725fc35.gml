//kill enemy if jumped on
if (vspeed > 0  && y <= (other.y - 256)){
	instance_destroy(other);
}
//damage enemy if hit
else if (keyboard_key_press(ord("X"))){
	//TODO: Insert code to decrement enemy health by damage
}
//lose life if none of above
else {
	//with(obj_player) {
	//if(!variable_instance_exists(id, "global.characterLives")) global.characterLives = 0;
	global.characterLives += real(-1);
	//}
	
	if(global.characterLives > 0)
	{
		x = xstart;
		y = ystart;
		
		room_restart();
	}
	
	else
	{
		global.is_game_over = 1;
	
		alarm_set(0, 120);
	}
}
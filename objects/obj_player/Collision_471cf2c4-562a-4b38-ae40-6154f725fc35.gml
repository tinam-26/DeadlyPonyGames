//kill enemy if jumped on
if (vspeed > 0  && y <= (other.y + 8)){
	instance_destroy(other);
}
//damage enemy if hit
else if (keyboard_key_press(ord("X"))){
	//TODO: Insert code to decrement enemy health by damage
}
//lose life if none of above
else {
	with(obj_player) {
	if(!variable_instance_exists(id, "lives")) lives = 0;
	lives += real(-1);
	}
	
	if(lives > 0)
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
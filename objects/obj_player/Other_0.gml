//if player falls out of the level rooms, player loses a life
if(room_get_name(room) == "rm_level1" || room_get_name(room) == "rm_level2" ||
room_get_name(room) == "rm_level3") {
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
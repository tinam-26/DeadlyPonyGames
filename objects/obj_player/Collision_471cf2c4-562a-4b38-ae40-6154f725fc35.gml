//lose life
with(obj_player) {
if(!variable_instance_exists(id, "lives")) lives = 0;
lives += real(-1);
}

with(obj_player) {
if(!variable_instance_exists(id, "lives")) lives = 0;
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
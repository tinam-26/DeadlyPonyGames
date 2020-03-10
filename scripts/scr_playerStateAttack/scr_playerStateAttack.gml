obj_player.has_weapon = true; 

time = obj_player.time;

if(time > 0){
	time--;
}else{
	obj_player.state = PLAYERSTATE.FREE;
}
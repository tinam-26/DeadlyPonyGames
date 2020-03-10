/// @description Insert description here



//trigger cutscene

if (level_flag = 0) {
	
	if(memory_flag == 1)
		room_goto(rm_transition1);
	else
		room_goto(rm_transition2);
	//room_goto(rm_level3);
	
	
   
	
}

//after cutscene ends, move to next room
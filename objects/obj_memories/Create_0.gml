image_speed = 0

//check level
//check memory choice
if (global.level_flag == 0) {
	if(global.memory_flag == 1)
		image_index = 0
	else
		image_index = 1
}
else if(global.level_flag == 1) {
	if(global.memory_flag == 1)
		image_index = 2
	else
		image_index = 3
}
else {
	if(global.memory_flag == 1)
		image_index = 4
	else
		image_index = 5
}
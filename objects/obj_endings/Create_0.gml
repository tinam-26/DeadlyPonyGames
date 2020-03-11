sprite_index = spr_endings
image_speed = 0

if(global.good_count == 3) {
	image_index = 0		
}
else if(global.bad_count == 3) {
	image_index = 1	
}
else {
	game_end()
}
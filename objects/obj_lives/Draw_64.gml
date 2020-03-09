//draw lives
with(obj_player) {
	var l5D564DAD_0 = sprite_get_width(spr_life);
	var l5D564DAD_1 = 0;
	//if(!variable_instance_exists(id, "global.characterLives")) global.characterLives = 0;
	for(var l5D564DAD_2 = global.characterLives; l5D564DAD_2 > 0; --l5D564DAD_2) {
		draw_sprite(spr_life, 0, 60 + l5D564DAD_1, 10);
		l5D564DAD_1 += l5D564DAD_0;
	}
}


if(global.is_game_over == 1)
{
	with(all) draw_text(room_width/2, room_height/2,  + string("Game Over!"));
}
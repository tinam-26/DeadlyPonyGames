if(obj_player.has_weapon){ 
	//obj_weapon_parent.image_speed = 10; 
	//change to attack sprite 
	//obj_set_sprite(obj_player, spr_player_attack);
	with(obj_player){
		hspeed = 0;
		if(instance_place(x, y, obj_enemy_parent)){
			obj_enemy_parent.enemy_health -= 50; 
		}
	}
	
}else{
	obj_weapon_parent.image_speed = 0; 
}

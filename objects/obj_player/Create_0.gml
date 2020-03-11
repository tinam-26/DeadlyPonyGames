global.player_hp = 100;
gravity_direction = 270;
global.level_flag = 0;
global.good_count = 0;
global.bad_count = 0;

has_weapon = false; 
key_attack = false; 

can_attack = true; 

enum PLAYERSTATE {
	FREE,
	ATTACK,
}

state = PLAYERSTATE.FREE;
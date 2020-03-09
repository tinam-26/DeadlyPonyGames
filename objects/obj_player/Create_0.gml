global.player_hp = 100;
gravity_direction = 270;

has_weapon = false; 
key_attack = false; 

enum PLAYERSTATE {
	FREE,
	ATTACK,
}

state = PLAYERSTATE.FREE;
global.player_hp = 100;
gravity_direction = 270;

has_weapon = false; 
key_attack = false; 
time = 10;
can_attack = true; 
enum PLAYERSTATE {
	FREE,
	ATTACK,
}

state = PLAYERSTATE.FREE;
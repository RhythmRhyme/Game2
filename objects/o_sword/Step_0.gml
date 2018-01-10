/// @description
if(o_player_status.playerDead){
	sprite_index = noone;
	exit;
}

//剑经验、等级
if(EXP > maxEXP){
	EXP = EXP - maxEXP;
	maxEXP = levelEXP[level];
	level++;
}


event_user(status);
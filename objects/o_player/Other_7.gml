/// @description flyStart

if(sprite_index == s_player_jump){
	status = playerStates.fly;
	sprite_index = s_player_fly;
	y -= 1;
	speedv = -speedFlyMax;
	speedFly = speedFlyMax;
}
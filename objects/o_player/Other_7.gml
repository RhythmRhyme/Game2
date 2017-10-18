/// @description flyStart

if(sprite_index == s_player_jump){
	status = playerStates.fly;
	y -= 1;
	speedv = -speedFlyMax;
	speedFly = speedFlyMax;
}
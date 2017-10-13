/// @description

var moveKey = playerMoveFunc();

pressWFunc();

playerJumpFunc();



//人物动画
if(fallDown){
	sprite_index = s_player_falldown;
}else if(speedv < 0){
	sprite_index = s_player_jump;
}else if(moveKey){
	sprite_index = s_player_walk;
}else{
	sprite_index = s_player_idle;
}


//剑跟随人物移动
if(o_sword.status == swordStates.inScabbard){
	var playerXY = getPlayerXY();
	o_sword.x = playerXY[XI];
	o_sword.y = playerXY[YI];
}
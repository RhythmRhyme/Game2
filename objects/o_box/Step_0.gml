
var key_down = keyboard_check(key);

if(key_down){
	//弹出武器选单
	alpha_ = 0.75;
	
	if(sword.status == swordStates.inScabbard){
		with(sword){
			x = o_player.x;
			y = o_player.y - o_player.sprite_height/2;
			var drewXY = getDrewXY();
			var directionDrew = point_direction(x, y, drewXY[XI], drewXY[YI]);
			direction = directionDrew;
			status = swordStates.drew;
		}
	}
	
}else if(sword.status != swordStates.inScabbard){
	//收起武器选单
	alpha_ = 1;
	sword.status = swordStates.back;
	
}

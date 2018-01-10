createSword();


var key_down = keyboard_check(key);

if(key_down){
	//剑出
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
	//收起武器
	alpha_ = 1;
	sword.status = swordStates.back;
}


//剑经验
if(instance_exists(sword)){
	enegybar.x = x_ - sprite_width/2 + 3;
	enegybar.y = y_ + sprite_height/2;
	enegybar.xscale = floor(sword.EXP * 57 / sword.maxEXP);
	enegybar.color = make_colour_rgb(25, 275 - o_player_status.maxMP, 255);
	enegybarTrans.x = enegybar.x;
	enegybarTrans.xscale = enegybar.xscale;
}
createSword();

//DELETE
//攻击次数耗尽
//if(sword.EXP <= 0 && sword.status != swordStates.inScabbard && sword.status != swordStates.back){
//	//收起武器
//	trigger = false;
//	sword.status = swordStates.back;
//	//box透明度
//	alpha_ = 1;
//	//升级
//	sword.level++;
//	sword.attack += sword.attackGP;
//	sword.MPRecov += sword.MPRecovGP;
//	sword.maxEXP = sword.level * sword.attack;
//}

var key_down = keyboard_check_pressed(key);
if(key_down){
	if(!trigger && sword.status == swordStates.inScabbard){
		//剑出
		trigger = true;
		with(sword){
			x = o_player.x;
			y = o_player.y - o_player.sprite_height/2;
			var drewXY = getDrewXY();
			var directionDrew = point_direction(x, y, drewXY[XI], drewXY[YI]);
			direction = directionDrew;
			status = swordStates.drew;
			depth = layer_get_depth(layerId) - 20;
		}
		
		//box透明度
		alpha_ = 0.75;
	
	}else if(sword.status != swordStates.inScabbard){
		//收起武器
		trigger = false;
		sword.status = swordStates.back;
		//box透明度
		alpha_ = 1;
	}
}

//DELETE
//if(instance_exists(sword)){
//	//剑经验
//	enegybar.x = x_ - sprite_width/2 + 3;
//	enegybar.y = y_ + sprite_height/2;
//	enegybar.xscale = floor(sword.EXP * 57 / sword.maxEXP);
//	enegybar.color = make_colour_rgb(25, 275 - o_player_status.maxMP, 255);
//	enegybarTrans.x = enegybar.x;
//	enegybarTrans.y = enegybar.y;
//	enegybarTrans.xscale = enegybar.xscale;
	
//	//剑攻击次数
//	//enegybarAC.x = x_ - sprite_width/2 + 3;
//	//enegybarAC.y = y_ + sprite_height/2;// - 53;
//	//enegybarAC.xscale = floor(sword.attackCount * 57 / sword.attackTimes);
//	//enegybarAC.color = make_colour_rgb(25, 275 - o_player_status.maxMP, 255);
//	//enegybarACTrans.x = enegybarAC.x;
//	//enegybarACTrans.y = enegybarAC.y;
//	//enegybarACTrans.xscale = enegybarAC.xscale;
	
//}
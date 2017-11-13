
//剑跟随人物移动
if(o_sword.status == swordStates.inScabbard){
	var playerXY = getPlayerXY();
	
	//人物飞行飘动效果sprite
	var offsetY = 0;
	if(o_player.sprite_index == s_player_fly_dynamic){
		offsetY = 3;
		
	//人物打坐sprite
	}else if(o_player.sprite_index == s_player_sit){
		offsetY = 6;
	}
	
	o_sword.x = playerXY[XI];
	o_sword.y = playerXY[YI] + offsetY;
}
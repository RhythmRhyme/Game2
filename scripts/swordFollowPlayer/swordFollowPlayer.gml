
//剑跟随人物移动
if(instance_exists(o_player)){
	var playerXY = getPlayerXY();
	if(o_player.sprite_index == s_player_fly || o_player.sprite_index == s_player_fly_dynamic){
		x = playerXY[XI];
		y = playerXY[YI] + o_player.sprite_height/2;
		image_angle = 0;
		image_xscale = o_player.image_xscale;
		sprite_index = s_player_fly_sword;
		
	}else if(o_player.sprite_index == s_player_sit){
		x = playerXY[XI] + o_player.sprite_width/2;
		y = playerXY[YI];
		image_angle = 0;
		image_xscale = o_player.image_xscale;
		sprite_index = s_player_fly_sword_dynamic;
		
	}else{
		x = playerXY[XI];
		y = playerXY[YI];
		image_angle = 270 + o_player.image_xscale * 30;
		image_xscale = 1;
		sprite_index = s_player_fly_sword;
	}
}
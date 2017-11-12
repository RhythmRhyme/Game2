
var pressA = keyboard_check(ord("A"));
var pressD = keyboard_check(ord("D"));
var pressW = keyboard_check(ord("W"));
var pressS = keyboard_check(ord("S"));
var moveKey = abs(pressA - pressD);
var updownKey = abs(pressW - pressS);

var onfloor = place_meeting(x,y+1,o_scene_static);


// 起势
if(status == playerStates.flyStart){
	return;	
}

//MP消耗
playerFlyMPCR();

//站在地面
if(onfloor){
	//飞行开始
	if(pressW && status != playerStates.fly && MPEnough()){
		sprite_index = s_player_jump;
		image_index = 0;
		image_speed = 1;
		status = playerStates.flyStart;
		return;
			
	//移动
	}else if(moveKey){
		//移动加速度
		if(pressA){
			speedh = lerp(speedh, -speedMax, speedAcceleration);
		}else {
			speedh = lerp(speedh, speedMax, speedAcceleration);
		}
		sprite_index = s_player_walk;
		status = playerStates.move;
		
	//未移动
	}else{
		if(status != playerStates.fly){
			speedh = slowdownPlayer(speedh, slowdown, 0.25);
			speedv = 0;
		}
		status = playerStates.stand;
		
	}
	
	//实际移动
	if(place_meeting(x+speedh,y,o_scene_static)){
		while(!place_meeting(x+sign(speedh),y,o_scene_static)){
			x += sign(speedh);
		}
		speedh = 0;
	}
	x += round(speedh);
		
	//动画
	var speedPers = abs(speedh) / speedMax;
	if(speedPers == 0){
		sprite_index = s_player_idle;
		
	}else{
		if(speedPers < 0.25) speedPers = 0.25;
		sprite_index = s_player_walk;
		image_speed = speedPers;
	}

}else{
	//飞行
	 if(MPEnough()){
		status = playerStates.fly;
		sprite_index = s_player_fly;
		var playerXY = getPlayerXY();
		var xAdd = 0;
		var yAdd = 0;
		if(pressA) xAdd -= 1;
		if(pressD) xAdd += 1;
		if(pressW) yAdd -= 1;
		if(pressS) yAdd += 1;
		if(xAdd != 0 || yAdd != 0){
			//计算移动速度
			dirFly = point_direction(playerXY[XI], playerXY[YI], playerXY[XI] + xAdd, playerXY[YI] + yAdd);
			speedFly = lerp(speedFly, speedFlyMax, speedFlyAcceleration);
		
		}else{
			//减速
			dirFly = point_direction(playerXY[XI], playerXY[YI], playerXY[XI] + speedh, playerXY[YI] + speedv);
			speedFly  = slowdownPlayer(speedFly, slowdownFly, 0);
			
			//TODO 漂浮效果
			if(speedFly < 1){
				
			}
			
		}
		speedh = lerp(speedh, lengthdir_x(speedFly,dirFly), speedFlyRotation);
		speedv = lerp(speedv, lengthdir_y(speedFly,dirFly), speedFlyRotation);
	
		//实际移动
		if(place_meeting(x+speedh,y,o_scene_static)){
			while(!place_meeting(x+sign(speedh),y,o_scene_static)){
				x += sign(speedh);
			}
			speedh = 0;
		}
		x += round(speedh);
		
		if(place_meeting(x,y+speedv,o_scene_static)){
			while(!place_meeting(x,y+sign(speedv),o_scene_static)){
				y += sign(speedv);
			}
			speedv = 0;
		}
		y += round(speedv);
		
	//下落
	 }else{
		sprite_index = s_player_falldown;
		status = playerStates.falldown;
		
		var playerXY = getPlayerXY();
		var xAdd = 0;
		var yAdd = 0;
		if(pressA) xAdd -= 1;
		if(pressD) xAdd += 1;
		if(pressS) yAdd += 1;
		if(xAdd != 0 || yAdd != 0){
			//计算移动速度
			dirFly = point_direction(playerXY[XI], playerXY[YI], playerXY[XI] + xAdd, playerXY[YI] + yAdd);
			speedFly = lerp(speedFly, speedFlyMax, speedFlyAcceleration);
		
		}else{
			//减速
			dirFly = point_direction(playerXY[XI], playerXY[YI], playerXY[XI] + speedh, playerXY[YI] + speedv);
			speedFly  = slowdownPlayer(speedFly, slowdownFly, 0);
		}
		var falldownSpeed = lengthdir_y(speedFly,dirFly);
		//最小下落速度
		if(falldownSpeed < 3) falldownSpeed = 3;
		speedh = lerp(speedh, lengthdir_x(speedFly,dirFly), speedFlyRotation);
		speedv = lerp(speedv, falldownSpeed, gravityV);
			
		//实际移动
		if(place_meeting(x+speedh,y,o_scene_static)){
			while(!place_meeting(x+sign(speedh),y,o_scene_static)){
				x += sign(speedh);
			}
			speedh = 0;
		}
		x += round(speedh);
		
		if(place_meeting(x,y+speedv,o_scene_static)){
			while(!place_meeting(x,y+sign(speedv),o_scene_static)){
				y += sign(speedv);
			}
			speedv = 0;
		}
		y += round(speedv);
	 }
	
}

//面对方向
if(speedh > 0){
	xscale = 1;
	image_xscale = xscale;
}else if(speedh < 0){
	xscale = -1;
	image_xscale = xscale;
}
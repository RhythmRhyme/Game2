
var pressA = keyboard_check(ord("A"));
var pressD = keyboard_check(ord("D"));
var pressW = keyboard_check(ord("W"));
var pressS = keyboard_check(ord("S"));

//飞行
status = playerStates.fly;
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
	sprite_index = s_player_fly;
		
}else{
	//减速
	dirFly = point_direction(playerXY[XI], playerXY[YI], playerXY[XI] + speedh, playerXY[YI] + speedv);
	speedFly  = slowdownPlayer(speedFly, slowdownFly, 0);
	
	if(speedFly < 1){
		sprite_index = s_player_fly_dynamic;
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
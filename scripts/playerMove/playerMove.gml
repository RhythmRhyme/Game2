
var pressA = keyboard_check(ord("A"));
var pressD = keyboard_check(ord("D"));
var pressW = keyboard_check(ord("W"));
var pressS = keyboard_check(ord("S"));
var moveKey = abs(pressA - pressD);

//飞行开始
if(pressW && status != playerStates.fly){
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
	status = playerStates.move;
		
//未移动
}else{
	if(status != playerStates.fly){
		speedh = slowdownPlayer(speedh, slowdown, 0.25);
		speedv = 0;
	}
	//打坐
	if(pressS){
		status = playerStates.sit;
	}
	if(status != playerStates.sit){
		status = playerStates.stand;
	}
	
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
	if(status == playerStates.sit){
		sprite_index = s_player_sit;
	}else{
		sprite_index = s_player_idle;
	}
		
}else{
	if(speedPers < 0.25) speedPers = 0.25;
	sprite_index = s_player_walk;
	image_speed = speedPers;
}


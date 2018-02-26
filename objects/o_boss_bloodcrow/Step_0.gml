event_inherited();

if(HP <=0){
	speed /= 2;
	exit;
}


//追踪玩家
if (alarm[1] <= 0){
	direction_ = point_direction(x,y,target.x,target.y);
	alarm[1] = room_speed * 2;
	
}
directionTo(direction_);
speed = lerp(speed, maxSpeed, 0.05);

//sprite为反方向
image_xscale = -1;

//始终脚部向下
if(image_angle > 90 && image_angle < 270){
	image_yscale = -1;
}else{
	image_yscale = 1;
}

//攻击冷却
if(!place_meeting(x, y, o_player)){
	ATTover = true;
}
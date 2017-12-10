event_inherited();

if(HP <=0){
	speed /= 2;
	exit;
}


//追踪玩家
var direction_ = 0;
if (point_distance(x, y, target.x, target.y) > 250){
	direction_ = point_direction(x,y,target.x,target.y);
	
}else{
	if(randomX == -1 || point_distance(x, y, randomX, randomY) <= 25 || point_distance(randomX, randomY, target.x, target.y) > 250){
		randomX = random_range(target.x - 200, target.x + 200);
		randomY = random_range(target.y - 300, target.y + 100);
	}
	direction_ = point_direction(x,y,randomX,randomY);
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
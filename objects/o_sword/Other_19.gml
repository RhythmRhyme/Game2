/// @description back 剑归

var playerXY = getPlayerXY();
var playerX = playerXY[XI];
var playerY = playerXY[YI];

var drewXY = getDrewXY();
var drewX = drewXY[XI];
var drewY = drewXY[YI];


var circle_r = (180/rotationRate*speed*2)/3.141592653/2;
	
//距离玩家的位置
if(abs(playerX - x) < speed && abs(playerY - y) < speed && lastBackStatus ){
	speed = 0;
	x = playerX;
	y = playerY;
	status = swordStates.inScabbard;
	drewTime = 0;
		
}else if( abs(playerX - x) < circle_r && abs(playerY - y) < circle_r && lastBackStatus ){	//靠近玩家
	move_towards_point(playerX,playerY,speedMax);
	image_angle = direction;
		
}else{
	var direction_;
	if(!lastBackStatus){
		direction_ = point_direction(x,y,drewX,drewY);
		if( abs(drewX - x) < circle_r && abs(drewY - y) < circle_r){	//靠近出鞘点
			lastBackStatus = 1;
		}
			
	}else{
		direction_ = point_direction(x,y,playerX,playerY);
	}
	
	directionTo(direction_);
		
	moveForward();
				
}
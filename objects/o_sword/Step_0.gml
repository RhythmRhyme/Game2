/// @description

var mouseLeft = mouse_check_button(mb_left);
var mouseRight = mouse_check_button(mb_right);
var mouseStatus = abs(mouseLeft - mouseRight);

//鼠标位置相对角度
var directionMouse = point_direction(x,y,mouse_x,mouse_y);

//玩家位置
var	playerX = o_player.x;
var	playerY = o_player.y - o_player.sprite_height/2;

//出鞘落点位置
var	drewX = o_player.xscale == 1 ? playerX  - 150 : playerX  + 150 ;
var	drewY = playerY - 259.5;

if(status == 8){
	x = playerX;
	y = playerY;
}

var collisionEnemy = place_meeting(x,y,o_enemy_scarecrow);
//攻击间隔
if(punctureCooldownCurrent>0){
	if(collisionEnemy)
		punctureCooldownCurrent -= 1;
	else{
		punctureCooldownCurrent = 0;
	}
}


//状态判断
if(status == 1 || status == 2){
	if(!collisionEnemy){
		if(speed > 0){
			status = 1;
		}else{
			status = 0;
		}
	}
}


if(mouseLeft){
	if(status == 8){	//已入鞘
		var directionDrew = point_direction(x,y,drewX,drewY);
		direction = directionDrew;
		status = 7 ;	//出鞘
		
	}else if(status == 9){	//剑归
		status = 1;
	}
	
	if(status != 7 && status != 8){
		//move forward
		if(speed < speedMax/8){
			speed += speedAcceleration/2;
		}else if(speed < speedMax/1.5){
			speed += speedAcceleration;
		}else if(speed < speedMax/1.25){
			speed += speedAcceleration/2;
		}else{
			speed = speedMax;
		}
	}
	
}else if(mouseRight && status != 8 && drewCooldown == 0){
	status = 9;	//剑归
	lastBackStatus = 0;	//未到达出鞘落点
	drewCooldown = 60;
	alarm[0] = room_speed;
}

if(status == 8){	//入鞘
	image_angle = 300;
	direction = 300;
	
}else if(status == 0 || status == 1 || status == 2){	//剑止 or 剑去 or 触敌
	
	if(!mouseLeft){
		//slowdown
		if(speed - slowdown > speedMax / 2 ){
			speed -= slowdown;
		}else if(speed - slowdown > 0 ){
			speed -= slowdown/2;
		}else{
			speed = 0;
		}
	}
	
	//静止时归剑
	if(speed == 0 && drewCooldown == 0){
		status = 9;	//剑归
		lastBackStatus = 0;	//未到达出鞘落点
		drewCooldown = 60;
		alarm[0] = room_speed;
	}

	//鼠标当前未指向飞剑
	if !((mouse_x <  x + sprite_width/2 && mouse_x > x - sprite_width/2) 
	&& (mouse_y <  y + sprite_height/2 && mouse_y > y - sprite_height/2)){
		//剑尖指向鼠标位置
		if(direction < directionMouse ){
			//细微转向
			if(direction + rotationRate > directionMouse){
				direction = directionMouse;
			}else{
				if(directionMouse - direction <= 180+rotationRate){
					direction += rotationRate;
				}else{
					//0度-360度轴的处理
					//细微转向
					if(direction+360 - directionMouse < rotationRate){
						direction = directionMouse;
					}else{
						direction -= rotationRate;
					}
				}
			}
		}else if(direction > directionMouse ){
			//细微转向
			if(direction - rotationRate < directionMouse){
				direction = directionMouse;
			}else{
				if(direction - directionMouse <= 180+rotationRate){
					direction -= rotationRate;
				}else{
					//0度-360度轴的处理
					//细微转向
					if( 360 - direction + directionMouse < rotationRate){
						direction = directionMouse;
					}else{
						direction += rotationRate;
					}
				}
			}
		}
		image_angle = direction;
	}
	
	
}else if(status == 9){	//剑归
	
	//距离玩家的位置
	if(abs(playerX - x) < 4 && abs(playerY - y) < 4 && lastBackStatus ){
		speed = 0;
		x = playerX;
		y = playerY;
		status = 8;	//入鞘
		drewTime = 0;
		
	}else if( abs(playerX - x) < 10 && abs(playerY - y) < 10 && lastBackStatus ){	//靠近玩家
		move_towards_point(playerX,playerY,6);
		
	}else if( abs(playerX - x) < 60 && abs(playerY - y) < 60 && lastBackStatus ){	//靠近玩家
		move_towards_point(playerX,playerY,10);
		
	}else{
		var directionTo;
		if(!lastBackStatus){
			directionTo = point_direction(x,y,drewX,drewY);
			if( abs(drewX - x) < 50 && abs(drewY - y) < 50){	//靠近出鞘点
				lastBackStatus = 1;
			}
			
		}else{
			directionTo = point_direction(x,y,playerX,playerY);
		}
		
		if(direction < directionTo ){
				//细微转向
				if(direction + rotationRate > directionTo){
					direction = directionTo;
				}else{
					if(directionTo - direction <= 180+rotationRate){
						direction += rotationRate;
					}else{
						//0度-360度轴的处理
						//细微转向
						if(direction+360 - directionTo < rotationRate){
							direction = directionTo;
						}else{
							direction -= rotationRate;
						}
					}
				}
			}else if(direction > directionTo ){
				//细微转向
				if(direction - rotationRate < directionTo){
					direction = directionTo;
				}else{
					if(direction - directionTo <= 180+rotationRate){
						direction -= rotationRate;
					}else{
						//0度-360度轴的处理
						//细微转向
						if( 360 - direction + directionTo < rotationRate){
							direction = directionTo;
						}else{
							direction += rotationRate;
						}
					}
				}
			}
		image_angle = direction;
		
		//move
		if(speed < speedMax/8){
			speed += speedAcceleration/2;
		}else if(speed < speedMax/1.5){
			speed += speedAcceleration;
		}else if(speed < speedMax/1.25){
			speed += speedAcceleration/2;
		}else{
			speed = speedMax;
		}
				
	}
}else if(status == 7){	//出鞘中
	
	var directionDrew = point_direction(x,y,drewX,drewY);
	
	//出鞘时间
	if( drewTime > 24 ){
		if(collisionEnemy){
			status = 2;
		}else{
			status = 1;
		}
	
	} else if( drewTime > 8 ){
		//3fps垂直拔剑后2倍转向速度调整剑尖转向出鞘落点
		//细微转向
		if(image_angle - rotationRate*2 < directionDrew){
			image_angle = directionDrew;
			
		}else if( 360 - image_angle + directionDrew < rotationRate*2){
			image_angle = directionDrew;
			
		}else{
			//根据鼠标位置反方向旋转出剑
			if( directionMouse < 300 && directionMouse > 120 ){
				image_angle += rotationRate*2;
			}else{
				image_angle -= rotationRate*2;
			}
		}
	}
	
	direction = directionDrew;
	speed = speedMax/2;
	
	
	drewTime += 1;
	
}


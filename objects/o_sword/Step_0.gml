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
var drewV = 150	* (12/(rotationRate+1));
var drewH = 259.5 * (12/(rotationRate+1));
var	drewX = o_player.xscale == 1 ? playerX  - drewV : playerX  + drewV ;
var	drewY = playerY - drewH;

if(status == 8){
	x = playerX;
	y = playerY;
}

//状态判断
if(status == 1 || status == 2){
	if(speed > 0){
		status = 1;
	}else{
		status = 0;
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
		status = 1;
	}
	
}else if(mouseRight && status != 8 && drewCooldown == 0){
	status = 9;	//剑归
	lastBackStatus = 0;	//未到达出鞘落点
	drewCooldown = 20;
	alarm[0] = room_speed;
}

if(status == 8){	//入鞘
	//剑的方向
	image_angle = 300;
	if(o_player.xscale != 1){
		image_angle = image_angle - 60;
	}
	direction = image_angle;
	
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
	//if(speed == 0 && drewCooldown){
	//	status = 9;	//剑归
	//	lastBackStatus = 0;	//未到达出鞘落点
	//	drewCooldown = 60;
	//	alarm[0] = room_speed;
	//}
	
	var mouseMeeting = position_meeting(mouse_x,mouse_y,o_sword);
	var distance = distance_to_point(mouse_x,mouse_y);
	
	//TODO
	if(speed > distance){
		speed = distance;
		
	}else if (!mouseMeeting){	//鼠标当前未指向飞剑
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
	}else{
		speed = 0.5;
	}
	
	
}else if(status == 9){	//剑归
	
	var circle_r = (180/rotationRate*speed*2)/3.141592653/2;
	
	//距离玩家的位置
	if(abs(playerX - x) < speed && abs(playerY - y) < speed && lastBackStatus ){
		speed = 0;
		x = playerX;
		y = playerY;
		status = 8;	//入鞘
		drewTime = 0;
		
	}else if( abs(playerX - x) < circle_r && abs(playerY - y) < circle_r && lastBackStatus ){	//靠近玩家
		move_towards_point(playerX,playerY,speedMax);
		image_angle = direction;
		
	}else{
		var directionTo;
		if(!lastBackStatus){
			directionTo = point_direction(x,y,drewX,drewY);
			if( abs(drewX - x) < circle_r && abs(drewY - y) < circle_r){	//靠近出鞘点
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
	direction = directionDrew;
	speed = 20;
	
	var spriteH = o_player.sprite_height;
	var drewTimeTurn = sqrt(spriteH * spriteH + spriteH * spriteH) / speed;
	
	//出鞘时间
	if( drewTime > drewTimeTurn ){
		image_angle = direction;
		speed = speedAcceleration;
		status = 1;
	
	}
	
	drewTime += 1;
	
}

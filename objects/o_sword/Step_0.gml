/// @description

var mouseLeft = mouse_check_button(mb_left);
var mouseRight = mouse_check_button(mb_right);
var mouseStatus = abs(mouseLeft - mouseRight);

//鼠标位置相对角度
var directionMouse = point_direction(x,y,mouse_x,mouse_y);

//玩家位置
var	playerX = o_player.x;
var	playerY = o_player.y - o_player.sprite_height/2;

if(status == 8){
	x = playerX;
	y = playerY;
}


//状态判断
if(status == 1 || status == 2){
	var collisionEnemy = place_meeting(x,y,o_enemy_scarecrow);
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
		status = 7 ;	//出鞘
		var	playerX = o_player.x - 2  - 100 ;
		var	playerY = o_player.y - o_player.sprite_height/2 + 2 - 173;
		//出鞘落点位置
		var directionPlayer = point_direction(x,y,playerX,playerY);
		direction = directionPlayer;
		speed = speedMax;
		
	}else if(status == 9){	//剑归
		direction = directionMouse;
		image_angle = direction;
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
	
}else if(mouseRight && status != 9){
	status = 9;	//剑归
	
}

if(status == 8){	//入鞘
	image_angle = 300;
	direction = 300;
	
}else if(status == 0 || status == 1){	//剑止 or 剑去
	
	if(!mouseLeft){
		//slowdown
		if(speed - slowdown > 0 ){
			speed -= slowdown;
		}else{
			speed = 0;
		}
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
	if(abs(playerX - x) < 4 && abs(playerY - y) < 4){
		speed = 0;
		x = playerX;
		y = playerY;
		status = 8;	//入鞘
		drewTime = 0;
		
	}else if( abs(playerX - x) < 50 && abs(playerY - y) < 50){	//靠近玩家
		move_towards_point(playerX,playerY,10);
		
	}else{

		var directionPlayer = point_direction(x,y,playerX,playerY);
		if(direction < directionPlayer ){
			//细微转向
			if(direction + rotationRate > directionPlayer){
				direction = directionPlayer;
			}else{
				if(directionPlayer - direction <= 180+rotationRate){
					direction += rotationRate;
				}else{
					//0度-360度轴的处理
					//细微转向
					if(direction+360 - directionPlayer < rotationRate){
						direction = directionPlayer;
					}else{
						direction -= rotationRate;
					}
				}
			}
		}else if(direction > directionPlayer ){
			//细微转向
			if(direction - rotationRate < directionPlayer){
				direction = directionPlayer;
			}else{
				if(direction - directionPlayer <= 180+rotationRate){
					direction -= rotationRate;
				}else{
					//0度-360度轴的处理
					//细微转向
					if( 360 - direction + directionPlayer < rotationRate){
						direction = directionPlayer;
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
	
	var	drewX = o_player.x - 2  - 200 ;
	var	drewY = o_player.y - o_player.sprite_height/2 + 2 - 346;
	//出鞘落点位置
	var directionDrew = point_direction(x,y,drewX,drewY);
	
	//出鞘时间
	if( drewTime > 15/global.FPS ){
		status = 1;
	
	} else if( drewTime > 3/global.FPS ){
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
	
	
	drewTime += 1/global.FPS;
	
}


/// @description

var mouseLeft = mouse_check_button(mb_left);
var mouseRight = mouse_check_button(mb_right);
var mouseStatus = abs(mouseLeft - mouseRight);

//鼠标位置相对角度
var directionMouse = point_direction(x,y,mouse_x,mouse_y);

var enemyCollision = place_meeting(x,y,o_enemy_scarecrow);

if(mouseStatus){
	if(mouseLeft && !enemyCollision){
		//move
		if(speed < speedMax/8){
			speed += speedAcceleration/4;
		}else if(speed < speedMax/4){
			speed += speedAcceleration/2;
		}else if(speed < speedMax/2){
			speed += speedAcceleration;
		}else if(speed < speedMax/1.5){
			speed += speedAcceleration/2;
		}else if(speed < speedMax/1.25){
			speed += speedAcceleration/4;
		}else{
			speed = speedMax;
		}

	}else if(mouseRight){
		if(enemyCollision){
			speed -= 1;
		}else{
			speed = 0;
		}
	}
}else if(!enemyCollision){
	
	//slowdown
	if(speed - slowdown > 0 ){
		
		if(speed < slowdown/8 ){
			speed += slowdown/4;
		}else if(speed < slowdown/4){
			speed += slowdown/2;
		}else if(speed < slowdown/2){
			speed += slowdown;
		}else if(speed < slowdown/1.5){
			speed += slowdown/2;
		}else if(speed < slowdown/1.25){
			speed += slowdown/4;
		}else{
			speed = 0;
		}
	}else{
		speed = 0;
	}

	//剑尖指向鼠标位置
	if(direction < directionMouse ){
		//细微转向
		if(direction + rotationRate > directionMouse){
			image_angle = directionMouse;
			direction = directionMouse;
		}else{
			if(directionMouse - direction <= 180+rotationRate){
				image_angle += rotationRate;
				direction += rotationRate;
			}else{
				//0度-360度轴的处理
				//细微转向
				if(direction - rotationRate < directionMouse){
					image_angle = directionMouse;
					direction = directionMouse;
				}else{
					image_angle -= rotationRate;
					direction -= rotationRate;
				}
			}
		}
	}else if(direction > directionMouse ){
		//细微转向
		if(direction - rotationRate < directionMouse){
			image_angle = directionMouse;
			direction = directionMouse;
		}else{
			if(direction - directionMouse <= 180+rotationRate){
				image_angle -= rotationRate;
				direction -= rotationRate;
			}else{
				//0度-360度轴的处理
				//细微转向
				if(direction + rotationRate > directionMouse){
					image_angle = directionMouse;
					direction = directionMouse;
				}else{
					image_angle += rotationRate;
					direction += rotationRate;
				}
			}
		}
	}
}

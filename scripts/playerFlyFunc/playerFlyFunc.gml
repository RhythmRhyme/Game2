
var pressA = keyboard_check(ord("A"));
var pressD = keyboard_check(ord("D"));
var pressW = keyboard_check(ord("W"));
var pressS = keyboard_check(ord("S"));

if(pressW && !fallDown){
	if(place_meeting(x,y+1,o_scene_static)){
		speedv = -4;
		
	//短暂上升期
	}else if(speedv > -6){
		speedv = lerp(speedv, -6.5, 0.1);
		
	//短暂上升期
	}else if(speedv > -8){
		speedv = lerp(speedv, -8.5, 0.1);
	
	//下落开始
	}else{
		fallDown = 1;
	}
	
//空中时下落
}else if(!place_meeting(x,y+speedv+gravityV,o_scene_static)){
	if(speedv < 2){
		speedv = lerp(speedv, 2.5, gravityV);
	}else{
		speedv = lerp(speedv, 6, gravityV);
	}
	fallDown = 1; 
}

//房间范围内//允许超过天空100px
if(y + speedv < room_height && y + speedv  > -100){
	//下落
	if(speedv > 0){
		var contactScene	= place_meeting(x,y+speedv,o_scene_static);
		var contactScene1px = place_meeting(x,y+sign(speedv),o_scene_static);
		
		//下落后未触地
		if(!contactScene){
			y += speedv;
		
		//靠近地面的距离小于speedv时
		}else if(contactScene && !contactScene1px){
			while(!place_meeting(x,y+sign(speedv),o_scene_static)){
				y += sign(speedv);
			}
			fallDown = 0;
		
		}else{
			speedv = 0;
			fallDown = 0;
		}
		
	//跳跃
	}else if(speedv < 0){
		y += speedv;
	}
}

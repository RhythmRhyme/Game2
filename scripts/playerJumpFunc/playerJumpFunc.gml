
pressWFunc();


//房间范围内//允许超过天空100px
if(speedv != 0 && y + speedv < room_height && y + speedv  > -100){
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
	}else{
		y += speedv;
	}
}

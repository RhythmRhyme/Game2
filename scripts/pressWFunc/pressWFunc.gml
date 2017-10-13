
var pressW = keyboard_check(ord("W"));

if(pressW && !fallDown){
	if(place_meeting(x,y+1,o_scene_static)){
		speedv = -3;
		
	//短暂上升期
	}else if(speedv > -6){
		speedv -= 0.2;
	
	//下落开始
	}else{
		fallDown = 1; 
	}
	
//空中时下落
}else if(!place_meeting(x,y+speedv+gravityV,o_scene_static)){
	speedv = lerp(speedv, 3, gravityV);
	fallDown = 1; 
}
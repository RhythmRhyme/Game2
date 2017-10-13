
var pressA = keyboard_check(ord("A"));
var pressD = keyboard_check(ord("D"));
var moveKey = abs(pressA - pressD);

if(!moveKey){
	if(speedv == 0){
		speedh = lerp(speedh, 0, slowdown);
		
	}else{
		speedh = lerp(speedh, 0, slowdownFall);
	}
}

//面对方向
if(speedh > 0){
	xscale = 1;
	image_xscale = xscale;
}else if(speedh < 0){
	xscale = -1;
	image_xscale = xscale;
}

//移动速度
if(moveKey){
	if(pressA){
		speedh = lerp(speedh, -speedMax, speedAcceleration);
	}else {
		speedh = lerp(speedh, speedMax, speedAcceleration);
	}
}


//左右移动
if(x + speedh < room_width && x + speedh > 0){
	if(!place_meeting(x+speedh,y,o_scene_static)){
		x += speedh;
		if(o_sword.status == 8)	o_sword.x += speedh;
	}else{
		//TODO 玩家与物体的距离小于一次移动的距离
	}
}

return moveKey;
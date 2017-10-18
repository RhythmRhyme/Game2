///@param speedh
///@param speedv
///@param obj

var speedh = argument0;
var speedv = argument1;
var obj = argument2;

//与物体的距离小于一次移动的距离
if(place_meeting(x+speedh,y,obj)){
	while(!place_meeting(x+sign(speedh),y,obj)){
		x += sign(speedh);
	}
}
//与物体的距离小于一次移动的距离
if(place_meeting(x,y+speedv,obj)){
	while(!place_meeting(x,y+sign(speedv),obj)){
		y += sign(speedv);
	}
}
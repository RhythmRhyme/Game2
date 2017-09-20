/// @description Insert description here
// You can write your code in this editor

speedh = 0;
speedv = 0;

if(keyboard_check(ord("W"))){
	//speedv = -4;
}

if(keyboard_check(ord("S"))){
	//speedv = 4;
}

if(keyboard_check(ord("A"))){
	speedh = -4;
}

if(keyboard_check(ord("D"))){
	speedh = 4;
}

//面对方向
if(speedh > 0){
	xscale = 1;
	image_xscale = xscale;
}else if(speedh < 0){
	xscale = -1;
	image_xscale = xscale;
}

if(o_sword.status == 8){
	o_sword.image_angle = xscale == 1 ? o_sword.image_angle : o_sword.image_angle - 60;
}

if(speedh != 0 || speedv != 0 ){
	sprite_index = s_player_walk;
}else{
	sprite_index = s_player_idle;
}

if(!place_meeting(x+speedh,y,o_scene_static) && x + speedh < room_width && x + speedh > 0){
	x += speedh;
	if(o_sword.status == 8)	o_sword.x += speedh;
}

//if(!place_meeting(x,y+speedv,o_scene_static) && y + speedv < room_height && y + speedv  > 0){
//	y += speedv;
//	if(o_sword.status == 8)	o_sword.y += speedv;
//}





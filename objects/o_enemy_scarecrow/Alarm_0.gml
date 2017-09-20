// @description Insert description here
// You can write your code in this editor

if(image_alpha <= 0){
	instance_destroy();
}else{
	image_alpha = image_alpha - 1/room_speed;
	alarm[0] = 1;
}
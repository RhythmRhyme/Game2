/// @description instance_destroy

if(image_alpha <= 0){
	instance_destroy();
}else{
	image_alpha = image_alpha - 1/room_speed;
	alarm[0] = 1;
}
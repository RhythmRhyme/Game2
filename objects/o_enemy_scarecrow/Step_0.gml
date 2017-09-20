/// @description Insert description here
// You can write your code in this editor

if(HP <=0){
	
	if(dead && image_alpha <= 0){
		instance_destroy();
	}else{
		image_alpha = image_alpha - 1/room_speed;
	}
	sprite_index = s_enemy_scarecrow_dead;
	
	return 0;
}
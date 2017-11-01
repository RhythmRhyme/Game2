
if(HP <=0){
	if(sprite_index != s_enemy_scarecrow_dead)
		sprite_index = s_enemy_scarecrow_dead;
	
	//渐隐消失
	if(image_alpha <= 0){
		instance_destroy();
	}else{
		image_alpha = image_alpha - 1/room_speed;
	}
	return 0;
	
}
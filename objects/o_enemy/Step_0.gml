
if(HP <=0){
	if(sprite_index != sprite_dead)
		sprite_index = sprite_dead;
	
	//渐隐消失
	if(image_alpha <= 0){
		instance_destroy();
	}else{
		image_alpha = image_alpha - 1/room_speed;
	}
	exit;
	
}else{
	//刷怪渐显
	if(image_alpha < 1){
		image_alpha = image_alpha + 1/room_speed;
	}
}
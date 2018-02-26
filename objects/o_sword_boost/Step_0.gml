/// @description 

if(dead){
	//渐隐消失
	if(image_alpha <= 0){
		instance_destroy();
	}else{
		image_alpha = image_alpha - 4/room_speed;
	}
}else{
	//渐显
	if(image_alpha < 1){
		image_alpha = image_alpha + 4/room_speed;
	}
}
direction = sword.direction;
image_angle = direction;
x = sword.x;
y = sword.y;
speed = sword.speed;

if(sword.speed >= sword.speedMax){
	sprite_index = s_sword_boost_fire;
}else{
	sprite_index = s_sword_boost;
}

//随着剑变大
image_xscale = sword.image_xscale;
image_yscale = sword.image_yscale;
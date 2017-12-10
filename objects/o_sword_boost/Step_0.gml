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
direction = o_sword.direction;
image_angle = direction;
x = o_sword.x;
y = o_sword.y;
speed = o_sword.speed;

if(o_sword.speed >= o_sword.speedMax){
	sprite_index = s_sword_boost_fire;
}else{
	sprite_index = s_sword_boost;
}
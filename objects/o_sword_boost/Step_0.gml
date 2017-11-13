/// @description 
direction = o_sword.direction;
image_angle = direction;
x = o_sword.x;
y = o_sword.y;

if(dead){
	//渐隐消失
	if(image_alpha <= 0){
		instance_destroy();
	}else{
		image_alpha = image_alpha - 4/room_speed;
	}
	exit;
}else{
	//渐显
	if(image_alpha < 1){
		image_alpha = image_alpha + 4/room_speed;
	}
	
	direction = o_sword.direction;
	image_angle = direction;
	speed = o_sword.speed;
	x = o_sword.x;
	y = o_sword.y;
	
}
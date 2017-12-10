var mouseLeft = mouse_check_button(mb_left);
var collisionSowrd = place_meeting(x + sprite_width/2, y - sprite_height/2, o_sword);

if(collisionSowrd){
	if(holdTimes >= 1 * room_speed){
		var inst = instance_create_layer(x, y, "enemy", o_enemy_spawn);
		inst.monster = lockMonster;
		inst.maxMonster = lockNumber;
		instance_destroy();
	
	}else if(mouseLeft){
		holdTimes++;
	
	}else{
		holdTimes--;
		holdTimes = clamp(holdTimes, 0, room_speed);
	}
}else{
	holdTimes--;
	holdTimes = clamp(holdTimes, 0, room_speed);
}

image_speed = holdTimes;
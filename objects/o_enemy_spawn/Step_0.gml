if(totalMonster < maxMonster && alarm[0] <= 0){
	if(monster != noone){
		instance_create_layer(x, y, "enemy", monster);
	}
	alarm[0] = 1 * room_speed;
	totalMonster++;
		
}else if(totalMonster >= maxMonster){
	instance_destroy();
}

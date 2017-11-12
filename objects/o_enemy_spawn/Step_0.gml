if(instance_exists(o_room)){
	if(o_room.totalMonster < o_room.maxMonster && alarm[0] <= 0){
		if(monster != noone){
			instance_create_layer(x, y, "enemy", monster);
		}
		alarm[0] = o_room.spawnCD;
		o_room.totalMonster++;
	}
}
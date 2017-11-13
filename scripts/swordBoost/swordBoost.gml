var MPconsume = 4 / room_speed;
if(o_player_status.MP - MPconsume  > 0){
	o_player_status.MP -= MPconsume;
	speed = lerp(speed, speedMax * 2.4, speedAcceleration);
	speed = clamp(speed, 0, speedMax * 2);
	if(!instance_exists(o_sword_boost)){
		boostInst = instance_create_layer(x, y, "Instances", o_sword_boost);
	}

}else{
	with(boostInst) dead = true;
	moveForward();
}
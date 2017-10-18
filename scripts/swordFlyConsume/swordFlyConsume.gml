
//剑出鞘后持续消耗玩家MP
if(object_exists(o_player)){
	var MPconsume = (speed + 1) / room_speed;
	if(o_player.MP - MPconsume  < 0){
		o_player.MP = 0;
	}else{
		o_player.MP -= MPconsume;
	}
	
	if(o_player.MP == 0){
		status = swordStates.back;
	}
	
}


//剑出鞘后持续消耗玩家MP
if(object_exists(o_player_status)){
	var MPconsume = 1 / room_speed;
	if(o_player_status.MP - MPconsume  > 0 && MPEnough()){
		o_player_status.MP -= MPconsume;
		
	}else{
		status = swordStates.back;
	} 
}
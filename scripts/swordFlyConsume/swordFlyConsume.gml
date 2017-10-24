
//剑出鞘后持续消耗玩家MP
if(object_exists(o_player_status)){
	var MPconsume = (speed + 1) / room_speed;
	if(o_player_status.MP - MPconsume  > 0){
		o_player_status.MP -= MPconsume;
		
	}else{
		status = swordStates.back;
	}
}
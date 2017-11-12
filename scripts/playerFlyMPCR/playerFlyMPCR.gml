//飞行消耗
if(status == playerStates.fly){
	var MPconsume = 1 / room_speed;
	if(o_player_status.MP - MPconsume  < 0){
		o_player_status.MP = 0;
	}else{
		o_player_status.MP -= MPconsume;	
	}
}
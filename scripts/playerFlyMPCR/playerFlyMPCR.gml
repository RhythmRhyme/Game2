//恢复
var MPrecov = 0.5 / room_speed;
o_player_status.MPrecov = MPrecov * room_speed;
if(o_player_status.MP + MPrecov  < o_player_status.maxMP){
	o_player_status.MP += MPrecov;
}

//飞行消耗
if(status == playerStates.fly){
	var MPconsume = 1 / room_speed;
	if(o_player_status.MP - MPconsume  < 0){
		o_player_status.MP = 0;
	}else{
		o_player_status.MP -= MPconsume;	
	}
}
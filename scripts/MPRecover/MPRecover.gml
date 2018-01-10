
//MP恢复量
MPrecov = 0;
if(instance_exists(o_box)){
	with(o_box){
		if(instance_exists(sword)){
			if(sword.status == swordStates.inScabbard){
				other.MPrecov += sword.MPRecov;
			}
		}
	}
	if(o_player.status == playerStates.sit){
		MPrecov *= 2;
	}
}
///@desc MP值计算

var MPextra = 0;
if(instance_exists(o_box)){
	with(o_box){
		if(instance_exists(sword)){
			if(sword.status == swordStates.inScabbard){
				MPextra += sword.level;
			}
		}
	}
	maxMP = baseMP + MPextra;
	MP = clamp(MP, 0, maxMP);
}
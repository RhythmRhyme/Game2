/// @description flying 剑去
if(speed < 0.1){
	status = swordStates.static;
	return;
}



slowdownSword();

mouseControl();

commonStates();

//未触敌时，清空已攻击列表
if(!place_meeting(x, y, o_enemy)){
	if(!ds_list_empty(attackedList)){
		ds_list_clear(attackedList);
	}
}




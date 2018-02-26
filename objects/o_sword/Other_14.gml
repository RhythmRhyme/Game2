/// @description 蓄力
var mouseLeft = mouse_check_button(mb_left);
if(!mouseLeft){
	speed = frozonSpeed;
	frozonSpeed = 0;
	chargedTime = 0;
	status = swordStates.flying;
	exit;
}

speed = floor(speedMaxDefault/10);
if(!instance_exists(boostInst)){
	boostInst = instance_create_layer(x, y, "Instances", o_sword_boost);
	boostInst.sword = id;
}
chargedTime++;

//充能等级增加
if(chargedLevel < chargedMaxLevel && chargedTime - chargedTimePerLevel * chargedLevel > 60){
	chargedLevel++;
	create_animation_effect(s_sword_boost_charge, x, y, random_range(1, 2), true);
}

commonStates();


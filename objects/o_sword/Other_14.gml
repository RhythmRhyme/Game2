/// @description 蓄力
var mouseLeft = mouse_check_button(mb_left);
if(!mouseLeft){
	speed = frozonSpeed * (1 + chargedLevel / 10 * 5);	// * (1 + 0.5/每级)
	if(speed > speedMax){
		speedMax = speed;	//提高最大速度值
	}
	frozonSpeed = 0;
	chargedLevel = 0;
	chargedTime = 0;
	status = swordStates.flying;
	exit;
}


speed = 1;
if(!instance_exists(boostInst)){
	boostInst = instance_create_layer(x, y, "Instances", o_sword_boost);
	boostInst.sword = id;
}
chargedTime++;


if(chargedLevel < chargedMaxLevel && chargedTime - chargedTimePerLevel * chargedLevel > 60){
	chargedLevel++;
	create_animation_effect(s_sword_boost_charge, x, y, random_range(1, 2), true);
}
/// @description puncture 触敌

//TODO 未校验是否触碰敌人？？
if(speed > 0){
	status = swordStates.flying;
}else{
	status = swordStates.static;
}

slowdownSword();

mouseControl();

commonStates();

swordFlyConsume();
/// @description puncture 触敌

if(speed > 0){
	status = swordStates.flying;
}else{
	status = swordStates.static;
}

slowdownSword();

mouseControl();

commonStates();

/// @description flying 剑去
if(speed = 0){
	status = swordStates.static;
	return;
}

slowdownSword();

mouseControl();

commonStates();
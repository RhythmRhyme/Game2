var mouseRight = mouse_check_button(mb_right);
var mouseLeft = mouse_check_button(mb_left);
if(mouseRight && alarm[0] <= 0){
	status = swordStates.back;	//剑归
	lastBackStatus = 0;			//未到达出鞘落点
	alarm[0] = backCooldown;	//剑归冷却
}else if(mouseLeft || status != swordStates.back){
	status = swordStates.flying;
	if(mouseLeft){
		swordBoost();
	}else{
		moveForward();
	}
}
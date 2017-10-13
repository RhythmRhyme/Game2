
var mouseLeft = mouse_check_button(mb_left);
var mouseRight = mouse_check_button(mb_right);
if(mouseLeft){
	moveForward();
	status = swordStates.flying;
}else if(mouseRight && alarm[0] <= 0){
	status = swordStates.back;				//剑归
	lastBackStatus = 0;		//未到达出鞘落点
	alarm[0] = drewCooldown;//剑归冷却
}
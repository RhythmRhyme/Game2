
//剑跟随人物移动
if(o_sword.status == swordStates.inScabbard){
	var playerXY = getPlayerXY();
	o_sword.x = playerXY[XI];
	o_sword.y = playerXY[YI];
}
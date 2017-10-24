/// @description inScabbard 鞘中

//剑的方向
image_angle = 300;
if(o_player.xscale != 1){
	image_angle = image_angle - 60;
}
direction = image_angle;


//出鞘
var mouseLeft = mouse_check_button(mb_left);
if(mouseLeft && MPEnough()){
	var drewXY = getDrewXY();
	var directionDrew = point_direction(x, y, drewXY[XI], drewXY[YI]);
	direction = directionDrew;
	status = swordStates.drew ;
}
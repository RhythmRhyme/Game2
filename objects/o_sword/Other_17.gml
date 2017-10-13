/// @description drew 剑出

var drewXY = getDrewXY();
var directionDrew = point_direction(x, y, drewXY[XI], drewXY[YI]);
direction = directionDrew;
speed = 20;
	
var spriteH = o_player.sprite_height;
var drewTimeTurn = sqrt(spriteH * spriteH + spriteH * spriteH) / speed;
	
//出鞘时间
if( drewTime > drewTimeTurn ){
	image_angle = direction;
	speed = speedAcceleration;
	status = swordStates.flying;
	
}

drewTime += 1;
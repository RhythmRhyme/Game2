/// @description

//飞行起始
if(status == playerStates.flyStart) exit;

//站在地面
var onfloor = place_meeting(x,y+1,o_scene_static);
if(onfloor){
	playerMove();
}else{
	playerFly();
}

//面对方向
if(speedh > 0){
	xscale = 1;
	image_xscale = xscale;
}else if(speedh < 0){
	xscale = -1;
	image_xscale = xscale;
}

swordFollowPlayer();
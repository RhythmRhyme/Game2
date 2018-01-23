/// @description follow mouse
XY = global.JianZhen[index];

x = mouse_x + XY[0];
y = mouse_y + XY[1];

if(sword.status == swordStates.inScabbard || sword.status = swordStates.back){
	image_alpha = 0.25;
}else{
	image_alpha = 1;
}
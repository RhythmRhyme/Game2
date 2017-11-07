//平缓变动速度
if(xscale > xscaleTransition){
	xscaleTransition = lerp(xscaleTransition, xscale, 0.05);	
}else if(xscale < xscaleTransition){
	xscaleTransition = xscale;
}

var cXY = getCameraXY();
draw_sprite_ext(s_enegybar, 1, x + cXY[XI], y + cXY[YI], xscaleTransition, 1, 0, color, alpha );
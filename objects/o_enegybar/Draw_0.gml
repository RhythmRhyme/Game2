//平缓变动速度
if(xscale > xscaleTransition){
	xscaleTransition = lerp(xscaleTransition, xscale, 0.05);	
}else if(xscale < xscaleTransition){
	xscaleTransition = xscale;
}

var cXY = getCamera();
draw_set_colour(color);
draw_rectangle(x + cXY[XI], y + cXY[YI],x + cXY[XI] + xscaleTransition, y + cXY[YI] - 16, false);
draw_set_colour(noone);

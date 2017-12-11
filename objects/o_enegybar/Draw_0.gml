//平缓变动速度
if(type == enegyBarType.MAIN){
	if(xscale > xscaleTransition){
		xscaleTransition = lerp(xscaleTransition, xscale, 0.05);	
	}else if(xscale < xscaleTransition){
		xscaleTransition = xscale;
	}
}else{
	if(xscale < xscaleTransition){
		xscaleTransition = lerp(xscaleTransition, xscale, 0.1);	
	}else if(xscale > xscaleTransition){
		xscaleTransition = xscale;
	}
}
if(xscaleTransition > 0){
	var cXY = getCamera();
	draw_set_colour(color);
	draw_rectangle(x + cXY[XI], y + cXY[YI] - 4 ,x + cXY[XI] + xscaleTransition, y + cXY[YI] - 15, false);
	draw_set_colour(noone);
}
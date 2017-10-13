
var vcX = camera_get_view_x(view_camera[0]);
var vcY = camera_get_view_y(view_camera[0]);

//平缓变动速度
if(xscale > xscaleTransition){
	xscaleTransition = lerp(xscaleTransition, xscale, 0.15);	
}else if(xscale < xscaleTransition){
	xscaleTransition = xscale;
}

draw_sprite_ext(s_enegybar, 1, vcX + X, vcY + Y, xscaleTransition, 1, 0, color, 1 );
/// @description Insert description here
// You can write your code in this editor
if(HPloose >0){
	draw_set_font(global.HPEnemyFont);
	
	//视野外则使数字显示在视野内
	
	vpX = camera_get_view_x(view_camera[0]);
	vpY = camera_get_view_y(view_camera[0]);
	vpW = camera_get_view_width(view_camera[0]);
	vpH = camera_get_view_height(view_camera[0]);
		
	if(x < vpX){
		x = vpX;
		direction = 355 + random_range(0,10);
		
	}else if(x > vpX + vpW){
		x = vpX + vpW;
		direction = 180 + random_range(-5,5);
		
	}
	
	if(y < vpY){
		y = vpY;
		direction = 270 + random_range(-5,5);
		
	}else if(y > vpY + vpH){
		y = vpY + vpH;
		direction = 90 + random_range(-5,5);
		
	}
	var alphaTemp = draw_get_alpha();
	draw_set_alpha(0.75);
	draw_text(x,y,HPloose);
	draw_set_alpha(alphaTemp);
	if(!showed)	alarm[0] = room_speed/2;
	showed = 1;
}
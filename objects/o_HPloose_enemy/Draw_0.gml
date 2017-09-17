/// @description Insert description here
// You can write your code in this editor
if(HPloose >0){
	//draw_set_colour(c_blue);
	draw_set_font(global.HPEnemyFont);
	draw_text(x,y,HPloose);
}

if(showTimes>0){
	showTimes -= 1/fps*1.5;
}else{
	instance_destroy();
}
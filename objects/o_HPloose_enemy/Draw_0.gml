/// @description Insert description here
// You can write your code in this editor
if(HPloose >0){
	draw_set_font(global.HPEnemyFont);
	draw_text(x,y,HPloose);
	if(!showed)	alarm[0] = room_speed/2;
	showed = 1;
}
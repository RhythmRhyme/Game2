/// @description Insert description here
// You can write your code in this editor


draw_set_font(global.LVLFont);

var vcX = camera_get_view_x(view_camera[0]);
var vcY = camera_get_view_y(view_camera[0]);
var vcW = camera_get_view_width(view_camera[0]);

draw_text(vcX + enegybarExEXPsides.X, vcY + Y, state[LVLstate-1] +" "+ string(LVL));

//next level
var showLVL = LVL;
var showLVLstate = LVLstate;
if(LVL + 1 > 9){
	showLVL = 1;
	showLVLstate++;	//境界+1
}else{
	showLVL++;
}
draw_text(vcX + enegycaseInst.image_xscale - 25, vcY + Y, state[showLVLstate-1] +" "+ string(showLVL));

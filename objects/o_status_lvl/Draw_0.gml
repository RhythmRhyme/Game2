/// @description Insert description here
// You can write your code in this editor


draw_set_font(global.LVLFont);

var vcX = camera_get_view_x(view_camera[0]);
var vcY = camera_get_view_y(view_camera[0]);
var vcW = camera_get_view_width(view_camera[0]);

draw_text(vcX + X, vcY + Y, state[LVLstate-1] +" "+ string(LVL));
//draw_text(vcX + X + 100, vcY + Y, EXP);

var maxExp = lvlExp[LVLtotal-1];
o_EXP.xscale = EXP * enegycaseInst.image_xscale / maxExp;

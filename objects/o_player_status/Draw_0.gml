
var cXY = getCamera();

//MP
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(global.UIFont);
draw_text(enegycaseInst.x + cXY[XI] + 6, enegycaseInst.y + cXY[YI], string("MP"));
//EXP
draw_text(enegycaseInstEXP.x + cXY[XI] + 6, enegycaseInstEXP.y + cXY[YI], string("EXP"));
draw_set_font(noone);


//恢复数值
draw_set_font(global.chineseFont12);
draw_set_colour(c_white);
var pointRight = string(floor(MPrecov*10) - floor(MPrecov)*10);
var showText = "";
if(MPrecov > 0){
	showText = "+";
}
showText += string(floor(MPrecov)) + "." + pointRight;
draw_set_valign(fa_middle);
draw_set_halign(fa_right);
draw_text(sidesRight.x + cXY[XI] - 1,  sidesRight.y + cXY[YI] - sidesRight.sprite_height/2, showText);

//MP数值
showText = string(floor(MP)) + "/" + string(floor(maxMP));
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(enegycaseInst.x + cXY[XI] + enegycaseInst.xscale / 2,  sidesRight.y + cXY[YI] - enegycaseInst.sprite_height/2, showText);


//EXP数值
var percent = EXP/maxEXP*100;
pointRight = string(floor(percent*100) - floor(percent)*100);
if(pointRight == "0") pointRight = "00";
showText = string(floor(percent)) + "." + pointRight + "%";
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(enegycaseInstEXP.x + cXY[XI] + enegycaseInstEXP.xscale / 2,  sidesRightEXP.y + cXY[YI] - enegycaseInstEXP.sprite_height/2, showText);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
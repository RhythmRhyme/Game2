//主体
var cXY = getCamera();
x = x_ + cXY[XI];
y = y_ + cXY[YI];
draw_sprite_ext(s_box, 1, x, y, 1, 1, 0, noone, alpha_);

//剑等级
draw_set_font(noone);
draw_text_ext_transformed(x - sprite_width / 2 + 2, y + sprite_height / 2 - 22, "lv", 0, 100, 0.6, 0.6, image_angle);
draw_text_ext_transformed(x - sprite_width / 2 + 14, y + sprite_height / 2 - 24, string(sword.level), 0, 100, 0.75, 0.75, image_angle);



//剑收起时调整位置和方向
if(sword.status == swordStates.inScabbard){
	sword.x = x;
	sword.y = y;
	sword.image_angle = 270;
	sword.image_xscale = 0.5;
	sword.image_yscale = 0.5;
}
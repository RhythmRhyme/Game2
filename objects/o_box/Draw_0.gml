var cXY = getCamera();
x = x_ + cXY[XI];
y = y_ + cXY[YI];
draw_sprite_ext(s_box, 1, x, y, 1, 1, 0, noone, alpha_);

if(sword.status == swordStates.inScabbard){
	sword.x = x;
	sword.y = y;
	sword.image_angle = 270;
}
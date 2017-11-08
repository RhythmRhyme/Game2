
var cXY = getCameraXY();
draw_set_font(noone);
draw_text(x + cXY[XI], y + cXY[YI], string(maxMP));

//恢复数值
//var pointRight = string(floor(MPrecov*1000) - floor(MPrecov*100)*10);
//draw_text(1000,  1000 - 38, "+"+ string(floor(MPrecov*100)) + "." + pointRight);
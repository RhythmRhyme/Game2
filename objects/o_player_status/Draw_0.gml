
var cXY = getCamera();
draw_set_font(noone);
draw_text(x + cXY[XI], y + cXY[YI], string(maxMP));

//恢复数值
var pointRight = string(floor(MPrecov*10) - floor(MPrecov)*10);
var showText = "+"+ string(floor(MPrecov)) + "." + pointRight;

draw_text(sidesRight.x + cXY[XI] - string_length(showText)*10,  sidesRight.y + cXY[YI] - 20, showText);
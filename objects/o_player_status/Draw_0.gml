
var cXY = getCamera();
draw_set_font(global.playerLevelFont);
draw_text(x + cXY[XI] - 24, y + cXY[YI] + 16, "LV."+string(maxMP));
draw_set_font(noone);

//恢复数值
var pointRight = string(floor(MPrecov*10) - floor(MPrecov)*10);
var showText = "+"+ string(floor(MPrecov)) + "." + pointRight;

if(MPrecov > 0)
	draw_text(sidesRight.x + cXY[XI] - string_length(showText)*10,  sidesRight.y + cXY[YI] - 20, showText);
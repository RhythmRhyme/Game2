
//计算与镜头的距离
var vcX = camera_get_view_x(view_camera[0]);
var vcY = camera_get_view_y(view_camera[0]);
X = x - vcX;
Y = y - vcY;

xscale = 1;

depth = -room_height-10;
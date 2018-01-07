//计算与镜头的距离
var vcX = camera_get_view_x(view_camera[0]);
var vcY = camera_get_view_y(view_camera[0]);
X = x - vcX;
Y = y - vcY;

infos = ["","","","",""];
infosX = [X,X,X,X,X];
infosY = [Y,Y,Y,Y,Y];
infosShowtimes = [0,0,0,0,0];
infosAlpha = [1,1,1,1,1];
nextInfo = "";
nextInfoX = X;
nextInfoY = Y;
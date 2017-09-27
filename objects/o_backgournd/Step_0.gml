/// @description Insert description here
// You can write your code in this editor


var vcX = camera_get_view_x(view_camera[0]);
var vcY = camera_get_view_y(view_camera[0]);
var vcW = camera_get_view_width(view_camera[0]);
var vcH = camera_get_view_height(view_camera[0]);

//人物在x轴上能移动的距离
var moveW = room_width - vcW;

//背景图在x轴上能移动的距离
var bgW = room_width - sprite_width;

x = bgW / moveW * vcX;
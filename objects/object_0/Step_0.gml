/// @description Insert description here
// You can write your code in this editor

a = keyboard_check_pressed(ord("A"));
b = keyboard_check(ord("D"));

if(a){
	image_angle += 10;
}else if(b){
	image_angle -= 10;
}
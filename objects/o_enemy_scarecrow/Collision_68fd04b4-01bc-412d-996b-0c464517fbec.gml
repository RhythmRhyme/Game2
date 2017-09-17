/// @description Insert description here
// You can write your code in this editor

show_debug_message(o_sword.speed);
if(o_sword.speed > 0){
	HP -= o_sword.ATT;
	o_sword.speed = 0;
}
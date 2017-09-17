/// @description Insert description here
// You can write your code in this editor

	
if(other.speed > 16 && other.status != 2){
	var eHPloose = round(other.ATT * (other.speed / other.speedMax));
	other.speed = 16 - other.speedAcceleration;
	var inst = instance_create_layer(x,y-sprite_height*1.5,"instances",o_HPloose_enemy);
	with(inst){
		HPloose = eHPloose;
	}
	HP -= eHPloose;
	if(HP <= maxHp/2){
		image_index = 1;
	}
	if(other.status != 9){	//非剑归状态
		other.status = 2;
	}
}else if(other.status != 2){
	var eHPloose = 1;
	var inst = instance_create_layer(x,y-sprite_height*1.5,"instances",o_HPloose_enemy);
	with(inst){
		HPloose = eHPloose;
	}
	HP -= eHPloose;
	if(HP <= maxHp/2){
		image_index = 1;
	}
	if(other.status != 9){	//非剑归状态
		other.status = 2;
	}
}
/// @description Insert description here
// You can write your code in this editor

	
if(other.speed > 0 && other.punctureCooldownCurrent == 0 && other.status != 7 && (other.status != 8 || !other.lastBackStatus) ){
	var eHPloose = round(other.ATT * (other.speed / other.speedMax));
	if(eHPloose<1){
		eHPloose = 1;
	}
	other.speed /= 1.5;
	var directionSword = other.direction;
	var speedSword = other.speed;
	var inst = instance_create_layer(other.x,other.y,"instances",o_HPloose_enemy);
	with(inst){
		HPloose = eHPloose;
		direction = directionSword + random_range(-5,5) ;
		speed = speedSword / 4 ;
	}
	HP -= eHPloose;
	if(HP <= maxHp/2){
		image_index = 1;
	}
	if(other.status != 8 && other.status != 9){	//非入鞘or剑归状态
		other.status = 2;
	}
	other.punctureCooldownCurrent = other.punctureCooldown;
	
}
//else if(other.speed > 0 && other.punctureCooldownCurrent == 0){
//	var eHPloose = 1;
//	var directionSword = other.direction;
//	var speedSword = other.speed;
//	var inst = instance_create_layer(other.x,other.y,"instances",o_HPloose_enemy);
//	with(inst){
//		HPloose = eHPloose;
//		direction = directionSword + random_range(-1,1) ;
//		speed = speedSword / 8 ;
//	}
//	HP -= eHPloose;
//	if(HP <= maxHp/2){
//		image_index = 1;
//	}
//	if(other.status != 8 && other.status != 9){	//非入鞘or剑归状态
//		other.status = 2;
//	}
//	other.punctureCooldownCurrent = other.punctureCooldown;
	
//}
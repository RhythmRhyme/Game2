/// @description
if(ATTover){
	ATTover = false;
	var dmg = round(ATT - o_player_status.DEF + round(random_range(-1,1)));
	if(dmg < 1){
		dmg = 1;
	}
	o_player_status.MP -= dmg;
	
	speed /= 2;
	
	
	//HP数值显示
	var directionSword = direction;
	var speedSword = speed;
	var inst = instance_create_layer(other.x+32,other.y,"instances",o_HPloose);
	var dmgPercent = dmg / o_player_status.maxMP * 25;
	dmgPercent = clamp(dmgPercent, 0.2, 2);
	with(inst){
		font = global.HPPlayerFont;
		HPloose = dmg;
		direction = directionSword + random_range(-3,3);
		speed = speedSword * 0.25;
		scale = dmgPercent;
	}
}
/// @description
if(ATTover && !o_player_status.playerDead){
	ATTover = false;
	//减速
	speed /= 4;
	
	var dmg = clamp(round(ATT - o_player_status.DEF), 1, 99999);
	o_player_status.MP -= dmg;
	if(o_player_status.MP<0) o_player_status.MP=0;
	
	//HP数值显示
	var directionSword = direction;
	var speedSword = speed;
	var inst = instance_create_layer(other.x, other.y - other.sprite_height/2, "instances", o_HPloose);
	with(inst){
		font = global.HPPlayerFont;
		HPloose = dmg;
		direction = directionSword + random_range(-3,3);
		speed = speedSword * 0.25;
		//玩家受击效果
		instance_create_layer(x, y, "instances", o_player_looseHP);
	}
	
}
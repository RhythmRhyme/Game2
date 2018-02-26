
if( HP > 0 ){
	//允许碰撞的剑的状态
	var sowrdStatus = other.status != 7 && (other.status != 8 || !other.lastBackStatus) && other.status != 9 ;
	var attacked = ds_list_find_index(other.attackedList, id) > -1;
	
	if(other.speed > 4 && sowrdStatus && !attacked ){
		//造成伤害
		var eHPloose = other.attack - DEF;
		var dmgPercent = other.speed / other.speedMaxDefault;	//速度影响伤害
		eHPloose = round(eHPloose * dmgPercent);

		if(eHPloose < 1){
			eHPloose = 1;
		}
	
		//HP数值显示
		var directionSword = other.direction;
		var speedSword = other.speed;
		var inst = instance_create_layer(other.x+32,other.y,"instances",o_HPloose);
		with(inst){
			HPloose = eHPloose;
			direction = directionSword + random_range(-3,3);
			speed = speedSword * 0.25;
			scale = clamp(dmgPercent/2, 0.75, 1.5);
		}
		
		HP -= eHPloose;
				
		//增加到已攻击列表中
		ds_list_add(other.attackedList , id);
		
		//剑经验值增加
		if(HP <= 0){
			o_player_status.EXP += MP;
		}
		
		//剑停滞
		other.status = swordStates.frozon;
		other.frozonSpeed = other.speed;
		other.alarm[1] = other.frozonTime;
		//充能等级
		other.chargedLevel = clamp(other.chargedLevel-1, 0, other.chargedMaxLevel);
	}
}
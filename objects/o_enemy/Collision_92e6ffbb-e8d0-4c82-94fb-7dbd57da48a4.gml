
if( HP > 0 ){
	//允许碰撞的剑的状态
	var sowrdStatus = other.status != 7 && (other.status != 8 || !other.lastBackStatus) && other.status != 9 ;
	var attacked = ds_list_find_index(other.attackedList, id) > -1;
	
	if(other.speed > 4 && alarm[0] <= 0 && sowrdStatus && !attacked ){
		var eHPloose = other.damage - DEF;
		var dmgPercent = other.speed / other.speedMax;	//速度影响伤害
		eHPloose = round(eHPloose * dmgPercent);

		if(eHPloose < 1){
			eHPloose = 1;
		}
		other.speed /= 1.33;
	
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
		
		if(HP <= 0){
			o_player_status.MP += maxMP;
			o_dynamic_info.nextInfo = "+" + string(maxMP);
			o_dynamic_info.nextInfoX = o_enegybar.x + o_enegybar.xscale;
			o_dynamic_info.nextInfoY = o_enegybar.y + o_enegybar.sprite_height;
		}
		
		if(other.status != 8 && other.status != 9){	//非入鞘or剑归状态
			other.status = swordStates.puncture;
		}
		//受击冷却
		alarm[0] = punctureCooldown;
		
		//增加到已攻击列表中
		ds_list_add(other.attackedList , id);
	}
}
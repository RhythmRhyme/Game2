
if( HP > 0 ){
	if(other.speed > 4 && alarm[0] <= 0 && other.status != 7 && (other.status != 8 || !other.lastBackStatus) ){
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
			scale = dmgPercent/2;
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
		
	}
}
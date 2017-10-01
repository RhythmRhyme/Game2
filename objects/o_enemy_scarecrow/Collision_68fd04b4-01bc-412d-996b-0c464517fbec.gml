
if( HP > 0 ){
	if(other.speed > 4 && punctureCooldownCurrent == 0 && other.status != 7 && (other.status != 8 || !other.lastBackStatus) ){
		var ATT = other.ATTMax;
		var eHPloose = ATT * ATT / ( DEF + ATT ) ;	//伤害公式
		eHPloose = round(eHPloose * (other.speed / other.speedMax));	//根据速度减少伤害

		if(eHPloose<1){
			eHPloose = 1;
		}
		other.speed /= 1.33;
	
		//HP数值显示
		var directionSword = other.direction;
		var speedSword = other.speed;
		var inst = instance_create_layer(other.x+32,other.y,"instances",o_HPloose_enemy);
		with(inst){
			HPloose = eHPloose;
			direction = directionSword + 180 ;//+ random_range(-5,5);
			speed = speedSword / 6 ;
		}
		
		HP -= eHPloose;
		if(HP <= maxHP/2){
			image_index = 1;
		}
		if(other.status != 8 && other.status != 9){	//非入鞘or剑归状态
			other.status = 2;
		}
		punctureCooldownCurrent = punctureCooldown;	
		
		if(HP <= 0){
			o_status_lvl.EXP += EXP;
			//显示
			o_dynamic_info.nextInfo = "gain EXP:" + string(EXP);
			
		}
	}
}

if( HP > 0 ){
	if(other.speed > 4 && alarm[0] <= 0 && other.status != 7 && (other.status != 8 || !other.lastBackStatus) ){
		var eHPloose = other.damage - DEF;
		eHPloose = round(eHPloose * (other.speed / other.speedFullDMG));	//根据速度增加伤害

		if(eHPloose < 1){
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
			other.status = swordStates.puncture;
		}
		//受击冷却
		alarm[0] = punctureCooldown;
		
		if(eHPloose > 0){
			var addEXP = round(eHPloose / maxHP * EXP);
			o_player_status.EXP += addEXP;
			//显示
			o_dynamic_info.nextInfo = "gain EXP:" + string(addEXP);
			
		}
	}
}
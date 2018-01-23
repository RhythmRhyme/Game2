if(!instance_exists(sword)){
	sword = instance_create_layer(x, y, "Instances", o_sword);
	with(sword){
		box = other.id;

		if(other.index == 4){
			sprite_index = s_sword_cucumber;
			speedMax = 13;
			attackBase = 2;
			MPRecovBase = 5;
			attackGP = 0.1;
			MPRecovGP = 0.3;
			level = 1;
			name = "黄瓜";
			maxEXP = level*attack;
			attack = round(attackBase + attackGP * level);
			MPRecov = round(MPRecovBase + MPRecovGP * level);
			JianZhen = global.JianZhen5;
	
		}else if(other.index == 3){
			sprite_index = s_sword_4;
			speedMax = 13;
			attackBase = 20;
			MPRecov = 2;
			attackGP = 0.8;
			MPRecovGP = 0.2;
			level = 6;
			name = "大吴剑";
			maxEXP = level*attack;
			attack = round(attackBase + attackGP * level);
			MPRecov = round(MPRecovBase + MPRecovGP * level);
			JianZhen = global.JianZhen4;
		
		}else if(other.index == 2){
			sprite_index = s_sword_3;
			speedMax = 13;
			attackBase = 14;
			MPRecov = 1;
			attackGP = 0.7;
			MPRecovGP = 0.1;
			level = 13;
			name = "霄炼剑";
			maxEXP = level*attack;
			attack = round(attackBase + attackGP * level);
			MPRecov = round(MPRecovBase + MPRecovGP * level);
			JianZhen = global.JianZhen3;
		
		}else if(other.index == 1){
			sprite_index = s_sword_2;
			speedMax = 13;
			attackBase = 5;
			MPRecov = 1;
			attackGP = 0.5;
			MPRecovGP = 0.2;
			level = 7;
			name = "湛卢剑";
			maxEXP = level*attack;
			attack = round(attackBase + attackGP * level);
			MPRecov = round(MPRecovBase + MPRecovGP * level);
			JianZhen = global.JianZhen2;
			
		}else{
			sprite_index = s_sword;
			speedMax = 13;
			attackBase = 10;
			MPRecov = 5;
			attackGP = 0.5;
			MPRecovGP = 0.5;
			level = 20;
			name = "符载剑";
			maxEXP = level*attack;
			attack = round(attackBase + attackGP * level);
			MPRecov = round(MPRecovBase + MPRecovGP * level);
			JianZhen = global.JianZhen1;
			
		}
		global.JianZhen = JianZhen;
		guide.sword = id;
	}
}
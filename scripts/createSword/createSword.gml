if(!instance_exists(sword)){
	sword = instance_create_layer(x, y, "Instances", o_sword);
	sword.box = id;

	if(index == 5){
		sword.sprite_index = s_sword_cucumber;
		sword.speedMax = 13;
		sword.damage = 2;
		sword.MPRecov = 5;
		sword.level = 1;
		sword.maxEXP = sword.levelEXP[sword.level];
	
	}else if(index == 4){
		sword.sprite_index = s_sword_4;
		sword.speedMax = 12;
		sword.damage = 20;
		sword.MPRecov = 3;
		sword.level = 6;
		sword.maxEXP = sword.levelEXP[sword.level];
		
	}else if(index == 3){
		sword.sprite_index = s_sword_3;
		sword.speedMax = 14;
		sword.damage = 14;
		sword.MPRecov = 1;
		sword.level = 13;
		sword.maxEXP = sword.levelEXP[sword.level];
		
	}else if(index == 2){
		sword.sprite_index = s_sword_2;
		sword.speedMax = 20;
		sword.damage = 5;
		sword.MPRecov = 1;
		sword.level = 7;
		sword.maxEXP = sword.levelEXP[sword.level];
			
	}else{
		sword.sprite_index = s_sword;
		sword.speedMax = 16;
		sword.damage = 10;
		sword.MPRecov = 5;
		sword.level = 20;
		sword.maxEXP = sword.levelEXP[sword.level];
			
	}
}
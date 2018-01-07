alpha_ = 1;
key = ord("1");

sword = instance_create_layer(x, y, "Instances", o_sword);
sword.box = id;

var ran = random_range(0,5);
if(round(ran) == 5){
	sword.sprite_index = s_sword_cucumber;
	sword.speedMax = 13;
	sword.damage = 2;
	
}else if(round(ran) == 4){
	sword.sprite_index = s_sword_4;
	sword.speedMax = 12;
	sword.damage = 20;
		
}else if(round(ran) == 3){
	sword.sprite_index = s_sword_3;
	sword.speedMax = 14;
	sword.damage = 14;
		
}else if(round(ran) == 2){
	sword.sprite_index = s_sword_2;
	sword.speedMax = 20;
	sword.damage = 5;
			
}else{
	sword.sprite_index = s_sword;
	sword.speedMax = 16;
	sword.damage = 10;
			
}
x_ = x;
y_ = y;

if(HP <=0){
	if(sprite_index != s_enemy_scarecrow_dead)
		sprite_index = s_enemy_scarecrow_dead;
	
	return 0;
	
//受击冷却
}else if(punctureCooldownCurrent > 0){
	punctureCooldownCurrent -= 1;
		
}
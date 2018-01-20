if(EXP >= maxEXP){
	EXP = maxEXP - EXP;
	level++;
	maxEXP = level * attack;
	attack = round(attackBase + attackGP * level);
	MPRecov = round(MPRecovBase + MPRecovGP * level);
}
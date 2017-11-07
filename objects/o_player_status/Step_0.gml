/// @description Insert description here
// You can write your code in this editor

if(EXP >= lvlEXP[lvl+1] && lvl <= array_length_1d(lvlEXP)+1){
	//获得的经验的溢出
	overflowEXP = EXP - lvlEXP[lvl];	
	lvl++;
	maxEXP = lvlEXP[lvl];
	EXP = overflowEXP;
	maxMP = lvlEXP[lvl];
	MP = maxMP;
	enegycaseInst.xscale = lvlEXP[lvl] * 7;
	enegysidesInst.x = enegycaseInst.x + enegycaseInst.xscale + abs(enegysidesInst.sprite_width);
	x = enegysidesInst.x;
}

//EXP
enegybarEXP.xscale = floor(EXP * enegycaseInst.xscale / maxEXP);

//MP
enegybarMP.xscale = floor(MP / maxMP * enegybarEXP.xscale);
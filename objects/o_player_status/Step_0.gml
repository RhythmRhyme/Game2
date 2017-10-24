/// @description Insert description here
// You can write your code in this editor

if(EXP >= lvlEXP[LVLtotal-1] && LVLtotal <= array_length_1d(lvlEXP)+1){
	//额外经验值
	if(LVLtotal > 1){
		exEXP = lvlEXP[LVLtotal-2];
	}
	
	//获得的经验的溢出
	overflowEXP = EXP - lvlEXP[LVLtotal-1];	
	LVLtotal++;
	
	//境界提升
	if(LVL + 1 > 9){
		LVL = 1;
		LVLstate++;	//境界+1
	}else{
		LVL++;
	}
	
	EXP = overflowEXP + exEXP;
	maxMP = exEXP;
	MP = maxMP;
}

//EXP
maxEXP = lvlEXP[LVLtotal-1];
enegybarEXP.xscale = EXP * enegycaseInst.image_xscale / maxEXP;

//MP
maxMP = EXP;
if(MP > maxMP)	MP = maxMP;
enegybarMP.xscale = MP / maxMP * enegybarEXP.xscale;

//exEXP
enegybarExEXP.xscale = exEXP * enegycaseInst.image_xscale / maxEXP;
enegybarExEXPsides.X = enegybarExEXP.X + enegybarExEXP.xscale;
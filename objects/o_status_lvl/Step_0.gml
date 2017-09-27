/// @description Insert description here
// You can write your code in this editor

if(EXP >= lvlExp[LVLtotal-1] && LVLtotal <= array_length_1d(lvlExp)+1){
	overflowEXP = EXP - lvlExp[LVLtotal-1];
	LVLtotal++;
	
	if(LVL + 1 > 9){
		LVL = 1;
		LVLstate++;	//境界+1
	}else{
		LVL++;
	}
	EXP = overflowEXP;
}

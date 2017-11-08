show_debug_message(array_length_1d(lvlMP))
if(lvl+1 < array_length_1d(lvlMP)){
	if(MP >= lvlMP[lvl]){
		//获得的经验的溢出
		overflowMP = MP - lvlMP[lvl];
		MP = overflowMP;
		lvl++;
		maxMP = lvlMP[lvl];
		enegybarMP.color = make_colour_rgb(25, 300-maxMP, 255);
		enegycaseInst.xscale = lvlMP[lvl] * 7;
		enegysidesInst.x = enegycaseInst.x + enegycaseInst.xscale + abs(enegysidesInst.sprite_width);
		x = enegysidesInst.x;
	}
}

//MP
if(MP <= maxMP){
	enegybarMP.xscale = floor(MP * enegycaseInst.xscale / maxMP);
}else{
	enegybarMP.xscale = floor(enegycaseInst.xscale);
}
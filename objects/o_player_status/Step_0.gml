if(lvl+1 < array_length_1d(lvlMP)){
	if(MP >= lvlMP[lvl]){
		//获得的经验的溢出
		overflowMP = MP - lvlMP[lvl];
		MP = overflowMP;
		lvl++;
		maxMP = lvlMP[lvl];
		enegybarMP.color = make_colour_rgb(25, 300-maxMP, 255);
		enegycaseInst.xscale = lvlMP[lvl] * addLength;
		//重置位置：从中间开始向两侧边长
		enegycaseInst.x = enegycaseInst.x - addLength / 2;
		sidesLeft.x = enegycaseInst.x - 3;
		sidesRight.x = enegycaseInst.x + enegycaseInst.xscale + abs(sidesRight.sprite_width);
		enegybarMP.x = enegycaseInst.x;
	}
}

//MP
if(MP <= maxMP){
	enegybarMP.xscale = floor(MP * enegycaseInst.xscale / maxMP);
}else{
	enegybarMP.xscale = floor(enegycaseInst.xscale);
}
MPrecov = maxMP / 60;
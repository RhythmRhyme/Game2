if(playerDead) exit;


if(MP >= lvlMP[lvl]){
	if(lvl+1 < array_length_1d(lvlMP)){
		//获得的经验的溢出
		overflowMP = MP - lvlMP[lvl];
		MP = overflowMP;
		lvl++;
		maxMP = lvlMP[lvl];
		enegybarMP.color = make_colour_rgb(25, 300-maxMP, 255);
		enegycaseInst.xscale = lvlMP[lvl] * addLength;
		//重置位置：从中间开始向两侧边长
		enegycaseInst.x = enegycaseInst.x - addLength / 2;
		sidesLeft.x = enegycaseInst.x - abs(sidesLeft.sprite_width);
		sidesRight.x = enegycaseInst.x + enegycaseInst.xscale + abs(sidesRight.sprite_width);
		enegybarMP.x = enegycaseInst.x;
		enegybarMPTrans.x = enegybarMP.x;
	}
}else if(MP < 0){
	if(lvl-1 < 0){
		playerDead = true;
	}else{
		lvl--;
		maxMP = lvlMP[lvl];
		MP = maxMP + MP;
		enegybarMP.color = make_colour_rgb(25, 300-maxMP, 255);
		enegycaseInst.xscale = lvlMP[lvl] * addLength;
		//重置位置：从中间开始向两侧边长
		enegycaseInst.x = enegycaseInst.x - addLength / 2;
		sidesLeft.x = enegycaseInst.x - abs(sidesLeft.sprite_width);
		sidesRight.x = enegycaseInst.x + enegycaseInst.xscale + abs(sidesRight.sprite_width);
		enegybarMP.x = enegycaseInst.x;
		enegybarMPTrans.x = enegybarMP.x;
	}
}

//MP
if(MP <= maxMP){
	enegybarMP.xscale = floor(MP * enegycaseInst.xscale / maxMP);
}else{
	enegybarMP.xscale = floor(enegycaseInst.xscale);
}
enegybarMPTrans.xscale = enegybarMP.xscale;

//MP恢复量
if(o_player.status == playerStates.move || o_player.status == playerStates.stand){
	MPrecov = maxMP / 60;
}else if(o_player.status == playerStates.sit){
	MPrecov = maxMP / 30;
}else{
	MPrecov = 0;
}

if(playerDead) exit;


if(MP >= lvlMP[lvl]){
	if(lvl+1 < array_length_1d(lvlMP)){
		//获得的经验的溢出
		overflowMP = MP - maxMP;
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
		x = enegycaseInst.x;
	}else{
		//超过最大等级
		MP = clamp(MP, -99999, maxMP);
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
		enegycaseInst.x = enegycaseInst.x + addLength / 2;
		sidesLeft.x = enegycaseInst.x - abs(sidesLeft.sprite_width);
		sidesRight.x = enegycaseInst.x + enegycaseInst.xscale + abs(sidesRight.sprite_width);
		enegybarMP.x = enegycaseInst.x;
		enegybarMPTrans.x = enegybarMP.x;
		x = enegycaseInst.x;
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
MPrecov = 0;
if(o_sword.speed > 1 && !instance_exists(o_sword_boost)){
	MPrecov += maxMP / 120;
}
if(o_player.status == playerStates.sit){
	MPrecov += maxMP / 120;
}else if(o_player.status != playerStates.fly){
	MPrecov += maxMP / 240;
}

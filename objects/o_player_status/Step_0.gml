if(playerDead) exit;

//DELETE
//if(MP >= lvlMP[lvl]){
//	if(lvl+1 < array_length_1d(lvlMP)){
//		//获得的经验的溢出
//		overflowMP = MP - maxMP;
//		MP = overflowMP;
//		lvl++;
//		maxMP = lvlMP[lvl];
//		enegybarMP.color = make_colour_rgb(25, 300-maxMP, 255);
//		enegycaseInst.xscale = lvlMP[lvl] * oneUnitLength;
//		//重置位置：从中间开始向两侧边长
//		enegycaseInst.x = enegycaseInst.x - oneUnitLength / 2;
//		sidesLeft.x = enegycaseInst.x - abs(sidesLeft.sprite_width);
//		sidesRight.x = enegycaseInst.x + enegycaseInst.xscale + abs(sidesRight.sprite_width);
//		enegybarMP.x = enegycaseInst.x;
//		enegybarMPTrans.x = enegybarMP.x;
//		x = enegycaseInst.x + 2;
//	}else{
//		//超过最大等级
//		MP = clamp(MP, -99999, maxMP);
//	}
//}else if(MP < 0){
//	if(lvl-1 < 0){
//		playerDead = true;
//	}else{
//		lvl--;
//		maxMP = lvlMP[lvl];
//		MP = maxMP + MP;
//		enegybarMP.color = make_colour_rgb(25, 300-maxMP, 255);
//		enegycaseInst.xscale = lvlMP[lvl] * oneUnitLength;
//		//重置位置：从中间开始向两侧边长
//		enegycaseInst.x = enegycaseInst.x + oneUnitLength / 2;
//		sidesLeft.x = enegycaseInst.x - abs(sidesLeft.sprite_width);
//		sidesRight.x = enegycaseInst.x + enegycaseInst.xscale + abs(sidesRight.sprite_width);
//		enegybarMP.x = enegycaseInst.x;
//		enegybarMPTrans.x = enegybarMP.x;
//		x = enegycaseInst.x + 2;
//	}
//} 


//MP值计算
var MPextra = 0;
if(instance_exists(o_box)){
	with(o_box){
		if(instance_exists(sword)){
			MPextra += sword.level;
		}
	}
	maxMP = baseMP + MPextra;
}


//根据画面宽度计算MP框每级的宽度 最大MP250
var c = getCamera();
var cWidth = c[2];
oneUnitLength = floor(cWidth / 250);

//MP颜色每级渐变
enegybarMP.color = make_colour_rgb(25, 275 - maxMP, 255);
//MP框长度
enegycaseInst.xscale = maxMP * oneUnitLength;
//MP外框位置重置：从中间开始向两侧变长
enegycaseInst.x = (cWidth - enegycaseInst.xscale) / 2;
sidesLeft.x = enegycaseInst.x - abs(sidesLeft.sprite_width);
sidesRight.x = enegycaseInst.x + enegycaseInst.xscale;
//MP条初始位置重置
enegybarMP.x = enegycaseInst.x;
enegybarMPTrans.x = enegybarMP.x;
//MP数值位置重置
x = enegycaseInst.x + 2;


//MP值长度
enegybarMP.xscale = floor(MP * enegycaseInst.xscale / maxMP);
enegybarMPTrans.xscale = enegybarMP.xscale;

MPRecover();
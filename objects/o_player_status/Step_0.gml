if(MP <= 0){
	playerDead = true;	
}

if(playerDead) exit;


//根据画面宽度计算MP/EXP框每级的宽度 最大250
var c = getCamera();
var cWidth = c[2];
oneUnitLength = floor(cWidth / 250);

//EXP计算-升级
if(EXP >= levelEXP[level]){
	if(level+1 < array_length_1d(levelEXP)){
		//获得的经验的溢出
		overflowEXP = EXP - maxEXP;
		EXP = overflowEXP;
		level++;
		maxEXP = levelEXP[level];
		//MP框长度
		enegycaseInstEXP.xscale = maxEXP * oneUnitLength;
		//MP外框位置重置：从中间开始向两侧变长
		enegycaseInstEXP.x = (cWidth - enegycaseInstEXP.xscale) / 2;
		sidesLeftEXP.x = enegycaseInstEXP.x - abs(sidesLeftEXP.sprite_width);
		sidesRightEXP.x = enegycaseInstEXP.x + enegycaseInstEXP.xscale;
		//MP条初始位置重置
		enegybarEXP.x = enegycaseInstEXP.x;
		enegybarEXPTrans.x = enegybarEXP.x;
	}else{
		//超过最大等级
		EXP = clamp(EXP, -99999, maxEXP);
	}
}
//EXP条变化
enegybarEXP.xscale = floor(EXP * enegycaseInstEXP.xscale / maxEXP);
enegybarEXPTrans.xscale = enegybarEXP.xscale;


//MP值计算
countMP();

//MP框长度
enegycaseInst.xscale = maxMP * oneUnitLength;
//MP外框位置重置：从中间开始向两侧变长
enegycaseInst.x = (cWidth - enegycaseInst.xscale) / 2;
sidesLeft.x = enegycaseInst.x - abs(sidesLeft.sprite_width);
sidesRight.x = enegycaseInst.x + enegycaseInst.xscale;
//MP条初始位置重置
enegybarMP.x = enegycaseInst.x;
enegybarMPTrans.x = enegybarMP.x;


//MP条变化
enegybarMP.xscale = floor(MP * enegycaseInst.xscale / maxMP);
enegybarMPTrans.xscale = enegybarMP.xscale;

//MP恢复量计算
MPRecover();
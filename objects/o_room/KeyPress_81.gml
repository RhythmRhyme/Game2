///@desc 跳到上一个可激活的剑阵

//跳到上一个可激活的剑阵

var previous = global.JianZhenBoxIndex-1;
while(previous >= 0){
	if(global.boxArr[previous].trigger){
		//移动下一个可激活的位置
		global.JianZhenBoxNextIndex = global.JianZhenBoxIndex;
		//移动当前位置
		global.JianZhenBoxIndex = previous;
		
		//获知再上一个可用的位置
		var previousIndex = previous-1;
		while(previousIndex >= 0){
			if(global.boxArr[previousIndex].trigger){
				global.JianZhenBoxPreviousIndex = previousIndex;
				break;
			}else{
				previousIndex--;	
			}
		}
		
		break;
	}else{
		previous--;	
	}
}
	
	
changeJianZhen();
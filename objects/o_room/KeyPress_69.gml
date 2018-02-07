///@desc 跳到下一个可激活的剑阵

//跳到下一个可激活的剑阵

var next = global.JianZhenBoxIndex+1;
while(next <= array_length_1d(global.boxArr)-1){
	if(global.boxArr[next].trigger){
		//移动下一个可激活的位置
		global.JianZhenBoxPreviousIndex = global.JianZhenBoxIndex;
		//移动当前位置
		global.JianZhenBoxIndex = next;
		
		//获知再下一个可用的位置
		var nextIndex = next+1;
		while(nextIndex <= array_length_1d(global.boxArr)-1){
			if(global.boxArr[nextIndex].trigger){
				global.JianZhenBoxNextIndex = nextIndex;
				break;
			}else{
				nextIndex++;	
			}
		}
		
		break;
	}else{
		next++;	
	}
}

	
changeJianZhen();
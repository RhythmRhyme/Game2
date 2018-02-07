
var index_ = 1;
for(var i=0; i<array_length_1d(global.boxArr); i++){
	//box存在并且已触发
	if(instance_exists(global.boxArr[i])){
		//当前剑阵所归属于的剑在中间
		if(global.boxArr[global.JianZhenBoxIndex] == global.boxArr[i]){
			global.boxArr[i].sword.guide.index = 0;
			global.JianZhen = global.boxArr[i].sword.JianZhen;
		}else{
			global.boxArr[i].sword.guide.index = index_;
			index_++;
		}
	}
}




global.boxArr = array_create(5, noone);

var c = getCamera();
var cWidth = c[2];

for(var i = 0; i <5; i++){
	var box = instance_create_layer(x, y, "status", o_box);
	box.index = i;
	box.key = ord(string(i+1));
	box.x_= (cWidth- 4*55)/2 + i*55;
	box.y_ = 947;
	global.boxArr[i] = box;
}


global.JianZhen1 = [[0,0],[0,-32],[0,32],[0,-64],[0,64]];	//上下
global.JianZhen2 = [[0,0],[0,-16],[0,16],[0,-32],[0,32]];	//上下集中
global.JianZhen3 = [[0,0],[0,-64],[0,64],[0,-128],[0,128]];	//上下宽
global.JianZhen4 = [[0,0],[-32,-32],[32,32],[-32,32],[32,-32]];	//五点分布
//global.JianZhen4 = [[0,10],[8,3],[-8,3],[10,0],[-10,-10]];	//集中
global.JianZhen5 = [[0,0],[-16,0],[16,0],[-32,0],[32,0]];	//左右集中
global.JianZhen6 = [[0,0],[-32,0],[32,0],[-64,0],[64,0]];	//左右
global.JianZhen7 = [[0,0],[-64,0],[64,0],[-128,0],[128,0]];	//左右宽


global.JianZhen = noone;
global.JianZhenBoxIndex = 0;
global.JianZhenBoxPreviousIndex = -1;
global.JianZhenBoxNextIndex = -1;
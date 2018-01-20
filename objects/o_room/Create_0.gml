
var c = getCamera();
var cWidth = c[2];

for(var i = 1; i <=5; i++){
	var box = instance_create_layer(x, y, "status", o_box);
	box.index = i;
	box.key = ord(string(i));
	box.x_= (cWidth- 4*55)/2 + (i-1)*55;
	box.y_ = 947;
}


for(var i = 1; i <=5; i++){
	var box = instance_create_layer(x, y, "status", o_box);
	box.index = i;
	box.key = ord(string(i));
	box.x_= 820 + (i-1)*70;
	box.y_ = 947;
}

/// @description MP recover 恢复
if(MP + MPrecov  < maxMP){
	MP += MPrecov;
}else{
	MP = maxMP - 0.01
}
alarm[0] = room_speed;
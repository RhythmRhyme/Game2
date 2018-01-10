/// @description MP recover 恢复

//DELETE
//if(MP < maxMP){	//获得大量经验时不会损失多余的经验值
if(MP + MPrecov  < maxMP){
	MP += MPrecov;
}else{
	MP = maxMP;
}
//}
alarm[0] = room_speed;
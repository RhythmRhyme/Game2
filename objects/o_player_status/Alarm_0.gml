/// @description MP recover 恢复

if(playerDead) exit;

//玩家MP恢复
if(MP + MPrecov  < maxMP){
	MP += MPrecov;
}else{
	MP = maxMP;
}


alarm[0] = room_speed;
if(frozon){
	speed = 1;
	exit;
}
speed = lerp(speed, speedMax * 1.2, speedAcceleration);
speed = clamp(speed, 0, speedMax);
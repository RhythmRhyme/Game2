/// @description frozonTime

if(status != swordStates.inScabbard && status != swordStates.back){
	status = swordStates.puncture;
}
speed = frozonSpeed + speedMaxDefault*0.1;
if(speed > speedMax){
	speedMax = speed;	//提高最大速度值
}
frozonSpeed = 0;


/// @description

depth = -100;
image_angle = 300;

enum swordStates{
	static = 0,		//剑止
	flying = 1,		//剑去
	puncture = 2,	//剑击
	drew = 7,		//剑出
	inScabbard = 8,	//剑鞘
	back = 9		//剑归
}
status = swordStates.inScabbard;

lastBackStatus = 0;
drewTime = 0;
backCooldown = room_speed;

speedAcceleration = 0.05;
speedMax = 40;
slowdown = 0;	//slowdown = 0.25;
rotationRate = 7.5;	//5-15

speedFullDMG = 20;	//此速度造成最大伤害

damage = 16;


/// @description

layerId = layer_get_id("Instances");
depth = layer_get_depth(layerId);

image_angle = 300;

//skill etc
boostInst = noone;

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

speedAcceleration = 0.025;
speedMax = 16;
slowdown = 0;	//slowdown = 0.25;
rotationRate = 12;	//5-15

speedFullDMG = speedMax;	//此速度造成最大伤害

damage = 10;


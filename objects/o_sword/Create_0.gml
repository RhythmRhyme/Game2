/// @description

layerId = layer_get_id("Instances");
depth = layer_get_depth(layerId) - 20;

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

//等级对应经验	TODO
levelEXP = [
	10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,999999,999999
];

//攻击
damage = 10;
//MP恢复量
MPRecov = 1;
//等级
level = 1;
//经验
EXP = 0;
maxEXP = levelEXP[level];

box = noone;

attackedList = ds_list_create();

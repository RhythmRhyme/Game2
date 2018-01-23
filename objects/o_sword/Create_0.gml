/// @description

layerId = layer_get_id("Instances");
depth = layer_get_depth(layerId) - 20;

image_angle = 300;

//skill
boostInst = noone;

//guide
guide = instance_create_layer(x,y,layerId,o_sword_guide);

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
backCooldown = room_speed;	//剑归冷却

//加速度
speedAcceleration = 0.025;
slowdown = 0;	//slowdown = 0.25; 0.25为优秀值，目前弃用
//转向速度
rotationRate = 12;	//5-15

//等级对应经验	TODO
levelEXP = [
	10,20,30,40,50,60,70,80,90,100,110,120,130,140,150,160,170,180,190,200,999999,999999
];
//剑名
name = noone;
//速度
speedMax = 16;
//DELETE
//攻击次数
//attackTimes = 1;
//attackCount = 0;
//攻击
attackBase = 0;
attackGP = 0;
attack = 0;
//MP恢复量
MPRecovBase = 0;
MPRecovGP = 0;
MPRecov = 0;
//等级
level = 1;
//经验
EXP = 0;
maxEXP = levelEXP[level];

//对应容器
box = noone;

//单次接触已攻击目标
attackedList = ds_list_create();

//剑阵
JianZhen = global.JianZhen1;
/// @description

speedMax = 4;
speedAcceleration = 0.2;
slowdown = 0.2;
speedFlyMax = 5;
speedFlyAcceleration = 0.1;
speedFlyRotation = 0.1;
slowdownFly = 0.1;

speedFly = 0;
speedh = 0;
speedv = 0;
gravityV = 0.1;
dirFly = 0;

enum playerStates{
	stand = 0,
	move = 1,
	flyStart = 2,
	fly = 3,
	falldown = 4,
	sit = 9
}
status = playerStates.stand;

depth = -101;
xscale = 1;


HP = 50;
maxHP = 50;
MP = 90;
maxMP = 90;

DEF = 20;

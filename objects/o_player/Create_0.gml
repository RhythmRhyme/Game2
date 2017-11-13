/// @description

layerId = layer_get_id("Instances");
depth = layer_get_depth(layerId);

xscale = 1;

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
	sit = 9
}
status = playerStates.stand;

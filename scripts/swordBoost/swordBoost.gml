//DELETE

speed = lerp(speed, speedMax * 2.4, speedAcceleration);
speed = clamp(speed, 0, speedMax * 2);
if(!instance_exists(boostInst)){
	boostInst = instance_create_layer(x, y, "Instances", o_sword_boost);
	boostInst.sword = id;
}
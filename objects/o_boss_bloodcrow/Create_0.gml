event_inherited();

maxMP = 40;
MP = maxMP;
maxHP = 400;
HP = maxHP;
ATT = maxMP;
DEF = 3;
ATTover = true;

image_alpha = 0;

sprite_dead = s_boss_bloodcrow_dead;

maxSpeed = 20;

target = o_player;

randomX = -1;
randomY = -1;

rotationRate = 10;

//sprite面向相反
image_xscale = -1;

depth = o_player.depth + random_range(-1,1);

direction_ = 0;

alarm[1] = room_speed*3;
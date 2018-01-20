event_inherited();

maxMP = 6;
MP = maxMP;
maxHP = maxMP*(maxMP+1)/2;
HP = maxHP;
ATT = maxMP;
DEF = 2;
ATTover = true;

image_alpha = 0;

sprite_dead = s_enemy_bloodcrow_dead;

maxSpeed = 4;

target = o_player;

randomX = -1;
randomY = -1;

rotationRate = 10;

//sprite面向相反
image_xscale = -1;

depth = o_player.depth + random_range(-1,1);

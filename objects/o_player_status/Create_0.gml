
lvlMP = [
50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
90, 91, 92, 93, 94, 95, 96, 97, 98, 99,
100, 101, 102, 103, 104, 105, 106, 107, 108, 109,
110, 111, 112, 113, 114, 115, 116, 117, 118, 119,
120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
130, 131, 132, 133, 134, 135, 136, 137, 138, 139,
140, 141, 142, 143, 144, 145, 146, 147, 148, 149,
150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
160, 161, 162, 163, 164, 165, 166, 167, 168, 169,
170, 171, 172, 173, 174, 175, 176, 177, 178, 179,
180, 181, 182, 183, 184, 185, 186, 187, 188, 189,
190, 191, 192, 193, 194, 195, 196, 197, 198, 199,
200, 201, 202, 203, 204, 205, 206, 207, 208, 209,
210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
220, 221, 222, 223, 224, 225, 226, 227, 228, 229,
230, 231, 232, 233, 234, 235, 236, 237, 238, 239,
240, 241, 242, 243, 244, 245, 246, 247, 248, 249,
250];

lvl = 10;

maxMP = lvlMP[lvl];
MP = 0;
MPrecov = 1;
DEF = 1;

layerId = layer_get_id("status");
layerDepth = layer_get_depth(layerId);

enegycaseInst = instance_find(o_enegy_case, 0);
sidesLeft = instance_find(o_enegy_sides, 0);
sidesRight = instance_find(o_enegy_sides, 1);
//每次升级MP框增加的宽度
var c = getCamera();
addLength = floor((c[2] - enegycaseInst.xscale) / array_length_1d(lvlMP));

enegybarMP = instance_create_layer(enegycaseInst.x,enegycaseInst.y,layerId,o_enegybar);
enegybarMP.color = make_colour_rgb(25, 200-floor(maxMP/5), 255);
enegybarMP.depth = layerDepth - 10;
enegybarMP.type = enegyBarType.MAIN;

enegybarMPTrans = instance_create_layer(enegycaseInst.x,enegycaseInst.y,layerId,o_enegybar);
enegybarMPTrans.color = c_gray;
enegybarMPTrans.depth = enegybarMP.depth + 1;
enegybarMPTrans.image_alpha = 0.5;
enegybarMPTrans.type = enegyBarType.TRANS;


alarm[0] = room_speed;

depth = layerDepth - 50;

playerDead = false;
alpha_ = 1;
index = 0;
//快捷键
key = noone;

//触发
trigger = false;

sword = noone;

//相对位置
x_ = x;
y_ = y;


//DELETE
////layer
//layerId = layer_get_id("status");
//layerDepth = layer_get_depth(layerId);

////MP 此时box的x、y的位置还不确定
//enegybar = instance_create_layer(x , y ,"status",o_enegybar);
//enegybar.color = make_colour_rgb(25, 275 - o_player_status.maxMP, 255);
//enegybar.depth = layerDepth - 10;
//enegybar.type = enegyBarType.MAIN;
//enegybar.width = 4;
//enegybar.height = 8;

////MP底层过度条
//enegybarTrans = instance_create_layer(x , y ,"status",o_enegybar);
//enegybarTrans.color = c_gray;
//enegybarTrans.depth = enegybar.depth + 1;
//enegybarTrans.image_alpha = 0.5;
//enegybarTrans.type = enegyBarType.TRANS;
//enegybarTrans.width = 4;
//enegybarTrans.height = 8;

//攻击次数  此时box的x、y的位置还不确定
//enegybarAC = instance_create_layer(x , y ,"status",o_enegybar);
//enegybarAC.color = make_colour_rgb(25, 275 - o_player_status.maxMP, 255);
//enegybarAC.depth = layerDepth - 10;
//enegybarAC.type = enegyBarType.MAIN;
//enegybarAC.width = 4;
//enegybarAC.height = 8;

//攻击次数底层过度条
//enegybarACTrans = instance_create_layer(x , y ,"status",o_enegybar);
//enegybarACTrans.color = c_gray;
//enegybarACTrans.depth = enegybarAC.depth + 1;
//enegybarACTrans.image_alpha = 0.5;
//enegybarACTrans.type = enegyBarType.TRANS;
//enegybarACTrans.width = 4;
//enegybarACTrans.height = 8;

//鼠标指向
mouseOver = false;
mouseOverTime = 0;
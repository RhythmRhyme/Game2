//主体
var cXY = getCamera();
x = x_ + cXY[XI];
y = y_ + cXY[YI];
draw_sprite_ext(s_box, 1, x, y, 1, 1, 0, noone, alpha_);

//快捷键
draw_set_font(global.UIFont);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x - sprite_width / 2 , y - sprite_height / 2, string(index));

//TODO避免界面过乱，设置开关？
//剑攻击力
//draw_set_font(global.chineseFont8);
//draw_set_halign(fa_right);
//draw_set_colour(c_white);
//draw_text(x + sprite_width / 2 - 3, y + sprite_height / 2 - 14, string(sword.attack));
//draw_set_halign(fa_left);



//剑收起时调整位置和方向
if(sword.status == swordStates.inScabbard){
	sword.x = x;
	sword.y = y;
	sword.image_angle = 270;
	sword.image_xscale = 0.5;
	sword.image_yscale = 0.5;
	sword.depth = depth - 1;
}

//鼠标指向显示信息
if(mouseOver){
	if(mouseOverTime>=10){
		var x1 = x - sprite_width / 2 - sprite_width;		//左下角x
		var x2 = x - sprite_width / 2 + sprite_width*2;		//右上角x
		var y1 = y - sprite_height / 2 - 1;					//左下角y
		var y2 = y - sprite_height / 2 - 150;				//右上角y
		var fontOffsetX = 4;
		//描述背景
		draw_set_alpha(0.9);
		draw_set_colour(make_colour_rgb(255, 255, 255));
		draw_rectangle(x1, y1, x2, y2, false);
		draw_set_alpha(1);
		//剑身
		draw_sprite_ext(sword.sprite_index,1,x2- sprite_width,(y1+y2)/2 + sprite_height/3,1,1,270,noone,0.75);
		//名称	//TODO根据品质改变颜色
		draw_set_colour(make_colour_rgb(30, 30, 30));
		draw_set_font(global.chineseFont14Maobi);
		draw_set_halign(fa_center);
		draw_text((x1+x2)/2 + fontOffsetX, y2+10, sword.name);
		//属性
		draw_set_colour(make_colour_rgb(60, 60, 60));
		draw_set_halign(fa_left);
		draw_set_font(global.chineseFont10);
		draw_text(x1 + fontOffsetX, y2+40, "攻击 " + string(sword.attack));
		draw_text(x1 + fontOffsetX, y2+58, "本尊恢复+" + string(sword.MPRecov));
		draw_text(x1 + fontOffsetX, y2+76, "本尊真气+" + string(sword.level));
		
		var speeds = "未知";
		if(sword.speedMax>=20){
			speeds = "极快";
		
		}else if(sword.speedMax>=18){
			speeds = "快";
		
		}else if(sword.speedMax>=16){
			speeds = "普通";
		
		}else if(sword.speedMax>=14){
			speeds = "慢";
		
		}else if(sword.speedMax>=10){
			speeds = "极慢";
		}
		draw_text(x1 + fontOffsetX, y1-34, "速度 " + speeds);
		draw_text(x1 + fontOffsetX, y1-16, "等级 " + string(sword.level));
	
		draw_set_halign(noone);
		draw_set_colour(noone);
		draw_set_font(noone);
		
	}else{
		mouseOverTime++;
	}
}
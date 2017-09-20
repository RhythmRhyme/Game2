/// @description Insert description here
// You can write your code in this editor

		
speedh = 0;


var pressW = keyboard_check(ord("W"));
show_debug_message(fallDown);
//触地/剑时按W起跳
if(pressW && !fallDown){
	if(place_meeting(x,y+1,o_scene_static)){
		speedv = -6;
		
	}else if( o_sword.status != 8 && o_sword.status != 9 && place_meeting(x,y+1,o_sword)){
		speedv = -6;
	
	//短暂上升期
	}else if(speedv > -8){
		speedv -= 0.2;
	
	//下落开始
	}else{
		fallDown = 1;
	}

//空中时下落
}else if(!place_meeting(x,y+1,o_scene_static) && !(o_sword.status != 8 && o_sword.status != 9 && place_meeting(x,y+1,o_sword))){
	speedv += gravityV;
	fallDown = 1;
	if(speedv > 12) speedv = 12;

}

if(keyboard_check(ord("S"))){
	//speedv = 4;
}

if(keyboard_check(ord("A"))){
	speedh = -4;
}

if(keyboard_check(ord("D"))){
	speedh = 4;
}

//面对方向
if(speedh > 0){
	xscale = 1;
	image_xscale = xscale;
}else if(speedh < 0){
	xscale = -1;
	image_xscale = xscale;
}

//剑的方向
if(o_sword.status == 8){
	o_sword.image_angle = xscale == 1 ? o_sword.image_angle : o_sword.image_angle - 60;
}

//人物动画
	if(speedv > 0){
		sprite_index = s_player_falldown;
	}else if(speedv < 0){
		sprite_index = s_player_jump;
	}else if(speedh != 0){
		sprite_index = s_player_walk;
	}else{
		sprite_index = s_player_idle;
	}

//左右移动
if(!place_meeting(x+speedh,y,o_scene_static) && x + speedh < room_width && x + speedh > 0){
	x += speedh;
	if(o_sword.status == 8)	o_sword.x += speedh;
}


//房间范围内//允许超过天空100px
if(speedv != 0 && y + speedv < room_height && y + speedv  > -100){
	//下落
	if(speedv > 0){
		var contactScene	= place_meeting(x,y+speedv,o_scene_static);
		var contactScene1px = place_meeting(x,y+sign(speedv),o_scene_static);
		var contactSword	= o_sword.status != 8 && o_sword.status != 9 && place_meeting(x,y+speedv,o_sword);
		var contactSword1px = o_sword.status != 8 && o_sword.status != 9 && place_meeting(x,y+sign(speedv),o_sword);
		
		//下落后未触地/剑
		if(!contactScene && !contactSword){
			y += speedv;
			if(o_sword.status == 8)	o_sword.y += speedv;	//剑跟随
		
		//靠近地面的距离小于speedv时
		}else if(contactScene && !contactScene1px){
			while(!place_meeting(x,y+sign(speedv),o_scene_static)){
				y += sign(speedv);
			}
			fallDown = 0;
		
		//靠近剑的距离小于speedv时
		}else if(contactSword && !contactSword1px){
			while(o_sword.status != 8 && o_sword.status != 9 && !place_meeting(x,y+sign(speedv),o_sword)){
				y += sign(speedv);
			}
			fallDown = 0;
			
		}else{
			speedv = 0;
			fallDown = 0;
		}
		
	//跳跃
	}else{
		y += speedv;
		if(o_sword.status == 8)	o_sword.y += speedv;	//剑跟随
	}
}


//御剑
//var contactSword1px = o_sword.status != 8 && o_sword.status != 9 && place_meeting(x,y+sign(speedv),o_sword);
//if(contactSword1px){
//	standOnSword = 1;
//}else{
//	standOnSword = 0;
//	speed = 0;
//	direction = 0;
//}

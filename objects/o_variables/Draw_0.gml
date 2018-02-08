
if(debug_mode){
	var vpX = x + camera_get_view_x(view_camera[0]);
	var vpY = y + camera_get_view_y(view_camera[0]);

	draw_set_font(noone);
	draw_text(vpX,vpY,"o_sword.status = "+string(o_sword.status));
	draw_text(vpX,vpY+20,"o_sword.speed = "+string(o_sword.speed));
	//draw_text(vpX,vpY+40,"o_sword.direction = "+string(o_sword.direction));
	//draw_text(vpX,vpY+60,"o_sword.rotationRate = "+string(o_sword.rotationRate));
	draw_text(vpX,vpY+40,"o_sword.(x,y) = "+"("+string(o_sword.x)+", "+string(o_sword.y)+")");

	draw_text(vpX,vpY+60,"o_player_status.MPrecov = "+string(o_player_status.MPrecov));
	draw_text(vpX,vpY+80,"o_player_status.MP = "+string(o_player_status.MP));
	draw_text(vpX,vpY+100,"o_player_status.maxMP = "+string(o_player_status.maxMP));
	draw_text(vpX,vpY+120,"o_player_status.EXP = "+string(o_player_status.EXP));
	draw_text(vpX,vpY+140,"o_player_status.maxEXP = "+string(o_player_status.maxEXP));

	draw_text(vpX+300,vpY,"o_player.(x,y) = "+"("+string(o_player.x)+", "+string(o_player.y)+")");
	draw_text(vpX+300,vpY+20,"o_player.speedv = "+string(o_player.speedv));
	draw_text(vpX+300,vpY+40,"o_player.speedh = "+string(o_player.speedh));
	draw_text(vpX+300,vpY+60,"o_player.status = "+string(o_player.status));
	
	
	draw_text(vpX+600,vpY+0,"sword.chargeTime = "+string(o_sword.chargedTime));
	draw_text(vpX+600,vpY+20,"sword.chargeLevel = "+string(o_sword.chargedLevel));
	//draw_text(vpX+600,vpY+40,"global.boxArr[2].trigger = "+string(global.boxArr[2].trigger) + " index = " + string(global.boxArr[2].index));
	//draw_text(vpX+600,vpY+60,"global.boxArr[3].trigger = "+string(global.boxArr[3].trigger) + " index = " + string(global.boxArr[3].index));
	//draw_text(vpX+600,vpY+80,"global.boxArr[4].trigger = "+string(global.boxArr[4].trigger) + " index = " + string(global.boxArr[4].index));
	
	
	
	
}
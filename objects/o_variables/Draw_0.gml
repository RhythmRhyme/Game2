
var vpX = camera_get_view_x(view_camera[0]) + 20;
var vpY = camera_get_view_y(view_camera[0]) + 20;

draw_set_font(noone);
draw_text(vpX,vpY,"o_sword.status = "+string(o_sword.status));
draw_text(vpX,vpY+20,"o_sword.speed = "+string(o_sword.speed));
draw_text(vpX,vpY+40,"o_sword.direction = "+string(o_sword.direction));
draw_text(vpX,vpY+60,"o_sword.rotationRate = "+string(o_sword.rotationRate));
draw_text(vpX,vpY+80,"o_sword.(x,y) = "+"("+string(o_sword.x)+", "+string(o_sword.y)+")");


draw_text(vpX+300,vpY,"o_player.(x,y) = "+"("+string(o_player.x)+", "+string(o_player.y)+")");
draw_text(vpX+300,vpY+20,"o_sword.speedv = "+string(o_player.speedv));
draw_text(vpX+300,vpY+40,"o_sword.speedh = "+string(o_player.speedh));
draw_text(vpX+300,vpY+60,"o_sword.fallDown = "+string(o_player.fallDown));
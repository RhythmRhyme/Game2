//到达鼠标指向位置时停止移动
var distance = distance_to_point(guide.x,guide.y);
if(speed*5 > distance){
	speed = distance/4;
}
	
//剑尖指向指引位置
var directionMouse = point_direction(x,y,guide.x,guide.y);
directionTo(directionMouse);

//剑大小
image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);
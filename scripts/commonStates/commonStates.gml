//到达鼠标指向位置时停止移动
//var distance = distance_to_point(mouse_x,mouse_y);
//if(speed > distance){
//	speed = distance;
//}
	
var mouseMeeting = position_meeting(mouse_x,mouse_y,o_sword);
if (!mouseMeeting){	//鼠标当前未指向飞剑
	//剑尖指向鼠标位置
	var directionMouse = point_direction(x,y,mouse_x,mouse_y);
	directionTo(directionMouse);

}
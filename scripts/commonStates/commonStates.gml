
	
//到达鼠标指向位置时停止移动
var distance = distance_to_point(guide.x,guide.y);
if(speed*2 > distance){
	speed = distance/2;
	//恢复最大速度值
	speedMax = speedMaxDefault;
}
	
//剑尖指向指引位置
var directionGuide = point_direction(x,y,guide.x,guide.y);
directionTo(directionGuide);

//剑大小
image_xscale = lerp(image_xscale, 1 + chargedLevel/5, 0.1);
image_yscale = lerp(image_yscale, 1 + chargedLevel/5, 0.1);

//剑攻击力计算
attack = round((attackBase + attackGP * level) * (1 + chargedLevel/5));
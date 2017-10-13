///@param direction_

var direction_ = argument0;

if(direction < direction_ ){
	//细微转向
	if(direction + rotationRate > direction_){
		direction = direction_;
	}else{
		if(direction_ - direction <= 180+rotationRate){
			direction += rotationRate;
		}else{
			//0度-360度轴的处理
			//细微转向
			if(direction+360 - direction_ < rotationRate){
				direction = direction_;
			}else{
				direction -= rotationRate;
			}
		}
	}
}else if(direction > direction_ ){
	//细微转向
	if(direction - rotationRate < direction_){
		direction = direction_;
	}else{
		if(direction - direction_ <= 180+rotationRate){
			direction -= rotationRate;
		}else{
			//0度-360度轴的处理
			//细微转向
			if( 360 - direction + direction_ < rotationRate){
				direction = direction_;
			}else{
				direction += rotationRate;
			}
		}
	}
}
image_angle = direction;
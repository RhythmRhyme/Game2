///@param speed
///@param slowdown
///@param slowdownLimit

var speed_ = argument0;
var slowdown_ = argument1;
var slowdownLimit_ = argument2;

//减速
if(speed_ != 0){
	speed_ = lerp(speed_, 0, slowdown_);
	if(sign(speed_) == 1 && speed_ < slowdownLimit_){
		speed_ = 0;
				
	}else if(sign(speed_) == -1 && speed_ > -slowdownLimit_){
		speed_ = 0;
	}
}

return speed_;
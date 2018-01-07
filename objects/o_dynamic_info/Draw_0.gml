draw_set_font(noone);

if(nextInfo != ""){
	for(var i = 4 ; i >= 0; i-- ){
		if(i == 0){
			infos[i] = nextInfo;
			infosX[i] = nextInfoX;
			infosY[i] = nextInfoY;
			nextInfo = "";
			infosAlpha[i] = 1;
			infosShowtimes[i] = 0;
		}else{
			infos[i] = infos[i-1];
			infosX[i] = infosX[i-1];
			infosY[i] = infosY[i-1];
			infosAlpha[i] = infosAlpha[i-1];
			infosShowtimes[i] = infosShowtimes[i-1];
		}
	}
}

var vcX = camera_get_view_x(view_camera[0]);
var vcY = camera_get_view_y(view_camera[0]);

for(var i=0; i<array_length_1d(infos); i++){
	infosShowtimes[i] += 1;
	if(infosShowtimes[i]>room_speed && infosAlpha[i] > 0){
		infosAlpha[i] -= 0.01;
	}
	draw_set_alpha(infosAlpha[i]);
	draw_text(vcX + infosX[i], vcY + infosY[i], infos[i]);
	draw_set_alpha(1);
}

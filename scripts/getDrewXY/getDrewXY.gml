///@desc 出鞘点位置

var playerXY = getPlayerXY();

var drewV = 150	* (12/(rotationRate+1));
var drewH = 259.5 * (12/(rotationRate+1));
var	drewX = o_player.xscale == 1 ? playerXY[XI]  - drewV : playerXY[XI]  + drewV ;
var	drewY = playerXY[YI] - drewH;

return [drewX, drewY];
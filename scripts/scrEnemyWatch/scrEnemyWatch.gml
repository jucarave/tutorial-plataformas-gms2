function scrEnemyWatch() {
	var dx = objPlayer.x - x;
	
	if (sign(dx) == image_xscale && abs(dx) <= 96) {
		state = "chasing";
	}
}
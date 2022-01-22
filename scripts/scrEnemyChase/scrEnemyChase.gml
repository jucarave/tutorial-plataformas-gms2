function scrEnemyChase(){
	var dx = objPlayer.x - x;
	if (abs(dx) > 64) {
		var dir = sign(dx);

		sprite_index = sprGruntWalk;
		image_xscale = dir;
		scrMovement(dir, 0.7, width);
	} else {
		sprite_index = sprGruntIdle;
	}
}
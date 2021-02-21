function scrCheckGroundCollision(width){
	var ground = collision_rectangle(x-width,y,x+width,y+vspeed,objWall,false,false);
	if (ground && y <= ground.y + 3 && y + vspeed >= ground.y) {
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
}
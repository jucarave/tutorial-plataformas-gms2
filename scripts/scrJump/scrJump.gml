function scrJump(width){
	if (collision_rectangle(x-width,y,x+width,y+1,objWall,false,false) && vspeed == 0) {
		vspeed = -5;
	}
}
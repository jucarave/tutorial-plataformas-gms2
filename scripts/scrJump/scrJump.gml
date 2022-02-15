function scrJump(width){
	if (collision_rectangle(x-width,y,x+width,y+1,objWall,false,false) && vspeed == 0) {
		vspeed = -5;
	} else if (collision_rectangle(x,y,x+(width+2)*image_xscale,y+1,objWall,false,false) && vspeed != 0) {
		vspeed = -5;
		isWallJumping = -sign(image_xscale);
		alarm[2] = 10;
	}
}
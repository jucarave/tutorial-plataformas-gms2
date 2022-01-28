function scrCheckPlatformCollision(width){
	var platform = collision_rectangle(x-width,y,x+width,y+1,objMovingPlatform,true,true);
	if (platform && vspeed == 0) {
		if (platform.hspeed != 0){ scrMovement(sign(platform.hspeed), abs(platform.hspeed), width, height); }
		y = platform.y;
	}
}
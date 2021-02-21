function scrCheckGravity(width){
	if (!collision_rectangle(x-width,y,x+width,y+1,objWall,false,false) || vspeed != 0) {
		gravity = 0.3;
		action = "Jump";
	}
}
function scrCheckGravity(width, height){
	if (!collision_rectangle(x-width,floor(y),x+width,ceil(y),objWall,true,true) || vspeed != 0) {
		gravity = 0.3;
		action = "Jump";
	}
	
	if (vspeed > 0) {
		scrCheckGroundCollision(width);
	} else if (vspeed < 0) {
		scrCheckCeilingCollision(width, height);
	}
}
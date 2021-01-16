#region Gravedad
if (!collision_rectangle(x-6,y,x+6,y+1,objWall,false,false)) {
	gravity = 0.3;
	action = "Jump";
}

if (vspeed > 0) {
	var ground = collision_rectangle(x-6,y,x+6,y+vspeed,objWall,false,false);
	if (ground) {
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
} else if (vspeed < 0) {
	var ceiling = collision_rectangle(x-6,y-25,x+6,y-25+vspeed,objWall,false,false);
	if (ceiling) {
		y = ceiling.y + ceiling.sprite_height + 25;
		vspeed = 0;
	}
}
#endregion

sprite_index = asset_get_index("spr" + weapon + action);
#region Gravedad
if (!collision_rectangle(x-6,y,x+6,y+1,objWall,false,false)) {
	gravity = 0.3;
	action = "Jump";
}

if (vspeed > 0) {
	var ground = collision_rectangle(x-6,y,x+6,y+vspeed,objWall,false,false);
	if (ground && y <= ground.y + 3) {
		y = ground.y;
		vspeed = 0;
		gravity = 0;
	}
} else if (vspeed < 0) {
	var ceiling = collision_rectangle(x-6,y-25,x+6,y-25+vspeed,objWall,false,false);
	if (ceiling && ceiling.oneSided == false) {
		y = ceiling.y + ceiling.sprite_height + 25;
		vspeed = 0;
	}
}
#endregion

#region Cambiar Sprite
sprite_index = asset_get_index("spr" + weapon + action);
#endregion

var platform = collision_rectangle(x-6,y,x+6,y+1,objMovingPlatform,true,true);
if (platform) {
	x += platform.hspeed;
	y += platform.vspeed;
}
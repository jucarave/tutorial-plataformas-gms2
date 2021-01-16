#region Movimiento Horizontal
var hor = keyboard_check(vk_right) - keyboard_check(vk_left);

if (hor != 0) {
	if (place_free(x + hor * 2, y)) {
		x += hor * 2;
	}
	
	image_xscale = hor;
	sprite_index = sprWalk;
} else {
	sprite_index = sprIdle;
}
#endregion

#region Salto
if (keyboard_check_pressed(vk_space) && collision_rectangle(x-8,y,x+8,y+1,objWall,false,false)) {
	vspeed = -5;
}
#endregion
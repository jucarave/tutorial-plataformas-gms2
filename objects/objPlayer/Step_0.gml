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
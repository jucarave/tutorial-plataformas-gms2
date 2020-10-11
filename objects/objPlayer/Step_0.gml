var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if (hor != 0) {
	x += hor * 1;
	image_xscale = hor;
	sprite_index = asset_get_index("sprWalk_" + weapon);
} else {
	sprite_index = asset_get_index("sprIdle_" + weapon);
}
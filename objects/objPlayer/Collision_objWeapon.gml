if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= 5) {
	with (other) {
		instance_destroy();
	}
	
	weapon = other.weapon;
}
if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= 5) {
	for (var i=0;i<array_length(weapons);i++) {
		if (weapons[i] == "NW") {
			with (other) {
				instance_destroy();
			}
	
			weapons[i] = other.weapon;
			weaponInd = i;
			break;
		}
	}
}
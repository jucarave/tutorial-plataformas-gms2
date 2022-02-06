if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= 5) {
	for (var i=0;i<array_length(weapons);i++) {
		if (weapons[i] == "NW") {
			scrPickWeapon(other, i);
			exit;
		}
	}
	
	scrCreateWeapon(weapons[weaponInd], x, y - 8);
	scrPickWeapon(other, weaponInd);
}
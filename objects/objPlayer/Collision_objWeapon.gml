if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= 5) {
	for (var i=0;i<array_length(objSystem.weapons);i++) {
		if (objSystem.weapons[i] == "NW") {
			scrPickWeapon(other, i);
			exit;
		}
	}
	
	scrCreateWeapon(objSystem.weapons[objSystem.weaponInd], x, y - 8);
	scrPickWeapon(other, objSystem.weaponInd);
}
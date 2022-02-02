function scrPlayerSwitchWeapon(){
	if (keyboard_check_pressed(ord("S"))) {
		weaponInd = (weaponInd == 0) ? 1 : 0;
	}
}
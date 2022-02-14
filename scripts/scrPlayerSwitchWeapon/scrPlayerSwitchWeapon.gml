function scrPlayerSwitchWeapon(){
	if (keyboard_check_pressed(ord("S"))) {
		objSystem.weaponInd = (objSystem.weaponInd == 0) ? 1 : 0;
	}
}
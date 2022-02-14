function scrPlayerFire(){
	firingFrequency -= 1;
	if (keyboard_check(ord("A")) && objSystem.weapons[objSystem.weaponInd] != "NW" && firingFrequency <= 0) {
		script_execute(asset_get_index("scr" + objSystem.weapons[objSystem.weaponInd] + "Attack"));
	}
}
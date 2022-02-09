function scrPlayerFire(){
	firingFrequency -= 1;
	if (keyboard_check(ord("A")) && weapons[weaponInd] != "NW" && firingFrequency <= 0) {
		script_execute(asset_get_index("scr" + weapons[weaponInd] + "Attack"));
	}
}
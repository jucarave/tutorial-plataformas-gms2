function scrPickWeapon(object, index){
	with (object) {
		instance_destroy();
	}
	
	objSystem.weapons[index] = object.weapon;
	objSystem.weaponInd = index;
}
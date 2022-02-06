function scrPickWeapon(object, index){
	with (object) {
		instance_destroy();
	}
	
	weapons[index] = object.weapon;
	weaponInd = index;
}
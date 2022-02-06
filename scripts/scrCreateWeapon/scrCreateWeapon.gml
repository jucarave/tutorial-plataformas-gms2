function scrCreateWeapon(weapon, _x, _y){
	var objectId = noone;
	switch (weapon) {
		case "AR":
			objectId = objAssaultRifle;
			break;
			
		case "MP":
			objectId = objMagnumPistol;
			break;
			
		case "ES":
			objectId = objEnergySword;
			break;
			
		default:
			return noone;
			break;
	}
	
	return instance_create_layer(_x, _y, "Items", objectId);
}
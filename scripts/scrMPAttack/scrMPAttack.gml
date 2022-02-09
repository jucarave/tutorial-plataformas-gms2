function scrMPAttack(){
	var flash = instance_create_layer(x + 14 * image_xscale, y - 15, "Bullets", objMuzzleFlash);
	flash.image_xscale = image_xscale;
		
	var bullet = instance_create_layer(x + 15 * image_xscale, y - 14, "Bullets", objBullet);
	bullet.image_xscale = image_xscale;
	bullet.hspeed *= image_xscale;
	bullet.dmg = 1;
		
	firingFrequency = 30;
}
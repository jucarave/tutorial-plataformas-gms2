function scrARAttack(){
	var flash = instance_create_layer(x + 16 * image_xscale, y - 14, "Bullets", objMuzzleFlash);
	flash.image_xscale = image_xscale;
		
	var bullet = instance_create_layer(x + 17 * image_xscale, y - 13, "Bullets", objBullet);
	bullet.image_xscale = image_xscale;
	bullet.hspeed *= image_xscale;
	bullet.dmg = 3;
		
	firingFrequency = 10;
}
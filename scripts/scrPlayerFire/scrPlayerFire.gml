function scrPlayerFire(){
	firingFrequency -= 1;
	if (keyboard_check(ord("A")) && weapon != "NW" && firingFrequency <= 0) {
		var flash = instance_create_layer(x + 16 * image_xscale, y - 14, "Bullets", objMuzzleFlash);
		flash.image_xscale = image_xscale;
		
		var bullet = instance_create_layer(x + 17 * image_xscale, y - 13, "Bullets", objBullet);
		bullet.image_xscale = image_xscale;
		bullet.hspeed *= image_xscale;
		
		firingFrequency = 10;
	}
}
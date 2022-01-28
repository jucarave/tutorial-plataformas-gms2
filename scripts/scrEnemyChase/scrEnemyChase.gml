function scrEnemyChase(){
	var dx = objPlayer.x - x;
	if (abs(dx) > 64) {
		var dir = sign(dx);

		sprite_index = sprGruntWalk;
		image_xscale = dir;
		scrMovement(dir, 0.7, width, height);
	} else {
		sprite_index = sprGruntIdle;
		
		firingFrequency -= 1;
		if (firingFrequency <= 0) {
			var flash = instance_create_layer(x + 11 * image_xscale, y - 8, "Bullets", objMuzzleFlash);
			flash.image_xscale = image_xscale;
			flash.sprite_index = sprMuzzleFlashPlasma;
		
			var bullet = instance_create_layer(x + 14 * image_xscale, y - 9, "Bullets", objBullet);
			bullet.image_xscale = image_xscale;
			bullet.hspeed *= image_xscale;
			bullet.sprite_index = sprBulletPlasma;
			bullet.collisionSprite = sprBulletCollisionPlasma;
			bullet.side = "enemy";
		
			firingFrequency = 60;
		}
	}
}
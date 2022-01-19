#region Movimiento Horizontal
	var hor = keyboard_check(vk_right) - keyboard_check(vk_left);

	if (hor != 0) {
		scrMovement(sign(hor), 2, width);
		action = "Walk";
	} else if (vspeed == 0) {
		action = "Idle";
	}
#endregion

#region Salto
	if (keyboard_check_pressed(vk_space)) {
		scrJump(width);
	}
#endregion

#region Disparar
	firingFrequency -= 1;
	if (keyboard_check(ord("A")) && weapon != "NW" && firingFrequency <= 0) {
		var flash = instance_create_layer(x + 16 * image_xscale, y - 14, "Bullets", objMuzzleFlash);
		flash.image_xscale = image_xscale;
		
		var bullet = instance_create_layer(x + 17 * image_xscale, y - 13, "Bullets", objBullet);
		bullet.image_xscale = image_xscale;
		bullet.hspeed *= image_xscale;
		
		firingFrequency = 10;
	}
#endregion
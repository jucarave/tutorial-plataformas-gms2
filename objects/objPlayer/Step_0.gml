#region Movimiento Horizontal
	var hor = keyboard_check(vk_right) - keyboard_check(vk_left);

	if (hor != 0) {
		scrMovement(sign(hor));
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
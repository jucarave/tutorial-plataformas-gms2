switch (state) {
	case "idle":
		scrPlayerMovement();
		scrPlayerJump();
		scrPlayerFire();
		scrPlayerDash();
		scrPlayerSwitchWeapon();
		break;
		
	case "dash":
		scrMovement(sign(image_xscale), 6, width, height);
		gravity = 0;
		vspeed = 0;
		break;
}
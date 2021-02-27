#region Colision plataforma
	scrCheckPlatformCollision(width);
#endregion

#region Gravedad
	scrCheckGravity(width);

	if (vspeed > 0) {
		scrCheckGroundCollision(width);
	} else if (vspeed < 0) {
		scrCheckCeilingCollision(width, height);
	}
#endregion

#region Cambiar Sprite
	scrUpdateSprite();
#endregion
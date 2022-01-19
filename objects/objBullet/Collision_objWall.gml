if (other.solid) {
	move_contact_solid(direction, 16);
	instance_create_layer(x, y, "Bullets", objBulletCollision);
	
	instance_destroy();
}
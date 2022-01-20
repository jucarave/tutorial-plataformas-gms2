if (other.state == "dead") { exit; }

other.hp -= dmg;

move_contact_all(direction, 16);
instance_create_layer(x, y, "Bullets", objBulletCollision);
	
instance_destroy();
function scrESAttack() {
	action = "Attack";
	state = "attack";
	firingFrequency = 15;
	image_index = 0;
	alarm[1] = (3 / sprite_get_speed(sprESAttack)) * room_speed;
}
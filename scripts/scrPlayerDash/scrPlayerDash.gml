function scrPlayerDash(){
	dashingFrequency -= 1;
	if (keyboard_check_pressed(ord("D")) && dashingFrequency <= 0) {
		state = "dash";
		alarm[0] = room_speed / 3;
		
		dashingFrequency = 10;
	}
}
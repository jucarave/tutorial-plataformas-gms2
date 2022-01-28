function scrMoveCamera() {
	var camera = view_camera[0];
	var width = camera_get_view_width(camera);
	var height = camera_get_view_height(camera);
	
	var camx = x - width / 2;
	var camy = y - height / 2;
	
	camx = clamp(camx, 0, room_width - width);
	camy = clamp(camy, 0, room_height - height);
	
	camera_set_view_pos(camera, camx, camy);
}
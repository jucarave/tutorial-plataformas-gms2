function scrMovement(hor){
	if (place_free(x + hor * 2, y)) {
		x += hor * 2;
	}
	
	image_xscale = hor;
}
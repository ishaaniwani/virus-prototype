if (keyboard_check_pressed(ord("Z"))) {
	if(page < array_length_1d(text) - 1) {
		page++;
		counter = 0;
		text_slot = 0;
	} else {
		instance_destroy();
	}
}
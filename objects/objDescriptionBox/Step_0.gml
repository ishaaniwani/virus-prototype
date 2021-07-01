if (keyboard_check_pressed(ord("Z")) and can_press_z) {
	if (text_slot < str_len) {
		text_slot = str_len;
		counter = str_len;
	} else if(page < array_length_1d(text) - 1) {
		page++;
		event_perform(ev_other, ev_user1);
	} else {
		instance_destroy();
	}
} 
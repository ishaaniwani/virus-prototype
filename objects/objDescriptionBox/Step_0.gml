if (keyboard_check_pressed(ord("Z"))) {
	if (!choice_dialogue and text_slot < str_len) {
		text_slot = str_len;
		counter = str_len;
	} else if(page < array_length_1d(text) - 1) {
		
		event_perform(ev_other, ev_user2);
		
		var line = next_line[page];
		
		if (choice_dialogue) {	
			line = line[choice];	
		}
		
		if (line == 0) {
			page++;	
		} else if (line == -1) {
			with (objCrouton) {
				//in_conversation = true;
				// Added this to solve bug where you had to press key twice to interact again
				active_textbox = noone;	
			}
			instance_destroy(); exit;
		} else {
			page = line;
		}

		event_perform(ev_other, ev_user1);
	} else {
		with (objCrouton) {
			// Added this to fix bug where you had to press key twice to interact again
			active_textbox = noone;	
		}
		instance_destroy();
	}
} 

if (choice_dialogue) {
	choice += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	if (choice > text_array_len - 1) {
		choice = 0;	
	} 
	if (choice < 0) {
		choice = text_array_len - 1;
	}
}
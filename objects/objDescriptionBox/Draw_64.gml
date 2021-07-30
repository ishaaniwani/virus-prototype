// Draw Box
draw_sprite_ext(box, 0, box_x, box_y,
				scale, scale, 0,
				choice_col, 1);

//----TEXT
draw_set_font(font);
if(!choice_dialogue) {
	// Draw Text
	if (!pause and text_slot < str_len) {
		counter++;
		if (counter mod 4 == 0) {
			audio_play_sound(voice, 10, false);
		}
		if (counter mod 2 == 0) {
			text_slot++;
		}
		switch(string_char_at(text_wrapped, text_slot)) {
			case " ": pause = true; alarm[1] = 1; break;
			case ",": pause = true; alarm[1] = 10; break;
			case ".":
			case "?":
			case "!": pause = true; alarm[1] = 15; break;
		
		}
	}
	var substr = string_copy(text_wrapped, 1, text_slot);

	c = text_col;
	draw_text_color(text_x, text_y, substr,
					c, c, c, c, 1); 
} else {
	c = text_col;
	var i = 0, y_add = 0; repeat(text_array_len) {
		if(choice == i){ 
			c = choice_col;
			draw_text_color(box_x + text_max_width, text_y + y_add, "<", c, c, c, c, 1);
		} else {
			c = text_col;
		}
		
		draw_text_ext_color(text_x, text_y + y_add, text_array[i], text_height, text_max_width,
						c, c, c, c, 1); 
		y_add += string_height_ext(text_array[i], text_height, text_max_width) + y_buffer / 2;
		i++;
	}

}
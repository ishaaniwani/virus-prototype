// Draw Box
draw_sprite_ext(box, 0, box_x, box_y,
				scale, scale, 0,
				c_aqua, 1);

//Draw Portrait Back
draw_sprite_ext(frame, 0, port_x, port_y,
				scale, scale, 0,
				c_aqua, 1);

// Draw Portrait
draw_sprite_ext(portrait, portrait_index, port_x, port_y,
				scale, scale, 0,
				c_white, 1);

// Draw Portrait Frame
draw_sprite_ext(frame, 1, port_x, port_y,
				scale, scale, 0,
				c_aqua, 1);

// Draw Namebox
// Tried drawing namebox, looked awkward
// Going to draw name inside textbox instead
/**
draw_sprite_ext(namebox, 0, namebox_x, namebox_y,
				scale, scale, 0,
				c_aqua, 1);
**/

//----TEXT
draw_set_font(font);

// Draw Name
var c = name_col;
draw_set_halign(fa_center); draw_set_valign(fa_middle);
draw_text_color(name_text_x, name_text_y, speaker_name, c, c, c, c, 1 );
draw_set_halign(fa_left); draw_set_valign(fa_top);


// If it not a choice dialogue, draw text as usual, the below code has a typewriter effect
// for gamefeel and juice.
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
	// Otherwise, list out the player's choices.
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

    
// Draw Box
draw_sprite_ext(box, 0, box_x, box_y,
				scale, scale, 0,
				c_aqua, 1);

//----TEXT
draw_set_font(font);

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

var c = text_col;
draw_text_color(text_x, text_y, substr,
				c, c, c, c, 1);     
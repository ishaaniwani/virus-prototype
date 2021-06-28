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
draw_text_color(name_text_x, name_text_y, name, c, c, c, c, 1 );
draw_set_halign(fa_left); draw_set_valign(fa_top);

// Draw Text
if (text_slot < string_length(text[page])) {
	counter++;
	if (counter mod 4 == 0) {
		audio_play_sound(voice, 10, false);
	}
	if (counter mod 2 == 0) {
		text_slot++;
	}
}
var substr = string_copy(text[page], 1, text_slot);

c = text_col;
draw_text_ext_color(text_x, text_y, substr, text_height, text_max_width,
					c, c, c, c, 1);    
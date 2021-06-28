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
// Draw Name

// Draw Text 
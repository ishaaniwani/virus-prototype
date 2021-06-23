if (!global.show_inventory) exit;

// Inventory Back
draw_sprite_ext(sprite, 0, // which sprite to draw, what frame of it to draw
				inv_UI_x, inv_UI_y, // the x and y of where to draw the sprite
				scale, scale, 0, // how scaled up (x and y) the GUI should be, the rotation
				c_aqua, 1 // color blending, and opacity
				);
				
var info_grid = ds_player_info;
var inventory = ds_inventory;

// Name
draw_set_font(fntBigText);
var c = c_white;
draw_text_color(info_x, info_y, // x y coordinate to draw text at
				info_grid[# 1, 0], // select values to write
				c, c, c, c, 1 // color to write, and opacity to draw them as
				);

// Menu Type
draw_text_color(inv_description_x, inv_description_y,
				"Items",
				c, c, c, c, 1
				);

draw_text_color(radio_description_x, radio_description_y,
				"Radio",
				c, c, c, c, 1
				);

// Inventory
var yy = 0; repeat(inv_slots) {
	var name = inventory[# 0, yy];
	if (name != "None") {
		draw_text_color(inventory_x, inventory_y + (yy * inventory_yincrement),
					name,
					c, c, c, c, 1
					);	
	}
	yy += 1;
}

// HP
draw_set_font(fntSmallText)
var c = c_red;
draw_text_color(hp_x, hp_y,
				info_grid[# 0, 1] + ": " + string(info_grid[# 1, 1]),
				c, c, c, c, 1
				);
				
// Gold
var c = c_yellow;
draw_text_color(gold_x, gold_y,
				info_grid[# 0, 2] + ": " + string(info_grid[# 1, 2]),
				c, c, c, c, 1
				);


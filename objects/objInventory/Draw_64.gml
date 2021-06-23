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
				info_grid[# 0, 0] + ": " + info_grid[# 1, 0], // select values to write
				c, c, c, c, 1 // color to write, and opacity to draw them as
				);

// HP
draw_set_font(fntMediumText)
draw_text_color(hp_x, hp_y,
				info_grid[# 0, 1] + ": " + string(info_grid[# 1, 1]),
				c, c, c, c, 1
				);
				
// Gold
draw_text_color(gold_x, gold_y,
				info_grid[# 0, 2] + ": " + string(info_grid[# 1, 2]),
				c, c, c, c, 1
				);
				
var yy = 0; repeat(inv_slots) {
	draw_text_color(inventory_x, inventory_y + (yy * inventory_yincrement),
					inventory[# 0, yy],
					c, c, c, c, 1
					);
	yy += 1;
}
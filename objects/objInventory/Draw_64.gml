 if (!show_inventory) exit;

var info_grid = ds_player_info;

// Draw First Column of Inventory Sprite
draw_sprite_ext(sprite, 0, // which sprite to draw, what frame of it to draw
				inv_UI_x, inv_UI_y, // the x and y of where to draw the sprite
				scale, scale, 0, // how scaled up (x and y) the GUI should be, the rotation
				c_aqua, 1 // color blending, and opacity
				);				
				
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

// Buttons for Menu
draw_sprite_ext(sprXButton, 0, 
				inv_button_x, inv_button_y,
				scale, scale, 0,
				c_white, 1);
				
draw_sprite_ext(sprZButton, 0, 
				radio_button_x, radio_button_y,
				scale, scale, 0,
				c_white, 1);

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



if (show_items) {
		//Draw Items Column of Inventory
		draw_sprite_ext(sprite, 1, // which sprite to draw, what frame of it to draw
					inv_UI_x, inv_UI_y, // the x and y of where to draw the sprite
					scale, scale, 0, // how scaled up (x and y) the GUI should be, the rotation
					c_aqua, 1 // color blending, and opacity
					);
	
		// Inventory
		var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
		ii = 0; ix = 0; iy = 0; inv_grid = ds_inventory; 
	
		repeat(inv_slots) {
			// x, y location for slot
			xx = slots_x + ((cell_size + x_buffer) * ix * scale);
			yy = slots_y + ((cell_size + y_buffer) * iy * scale);
		
			// Item
			iitem = inv_grid[# 0, ii];
			sx = (iitem mod spr_inv_items_columns) * cell_size;
			sy = (iitem mod spr_inv_items_rows) * cell_size;
		
			//Draw Slot and Item
			draw_sprite_ext(sprite, 2, xx, yy, scale, scale, 0, c_aqua, 1);
		
			switch(ii) {
				case selected_slot:
					if (iitem > 0) draw_sprite_part_ext(
						spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
					);
					gpu_set_blendmode(bm_add);
					draw_sprite_part_ext(
						sprite, 2, 0, 0, cell_size, cell_size, xx, yy, scale, scale, c_white, 0.5
					);
					gpu_set_blendmode(bm_normal);
				break;
			
				case pickup_slot:
					if (iitem > 0) draw_sprite_part_ext(
						spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 0.2
					);
				break;
			
				default:
					if (iitem > 0) draw_sprite_part_ext(
						spr_inv_items, 0, sx, sy, cell_size, cell_size, xx, yy, scale, scale, c_white, 1
					);
				break;
			}
	
			// Draw Item Number
			if (iitem > 0) {
				var number = inv_grid[# 1, ii];
				var c = c_white;
				draw_text_color(xx + (3 * scale), yy + (3 * scale), string(number), c, c, c, c, 1);
			}
		
			// Increment
			ii += 1;
			ix = ii mod inv_slots_width;
			iy = ii div inv_slots_height;
		}
	
	// Draw Item Description
	var iinfo_grid = ds_items_info, description = "";
	iitem = inv_grid[# 0, selected_slot];
	
	if (iitem > 0) {
		draw_set_font(fntMediumText);
		description = iinfo_grid[# 0, iitem] + ". " + iinfo_grid[# 1, iitem];
		c = c_white;
		draw_text_ext_color(desc_x, desc_y, description, string_height("M"), wrap_x, c, c, c, c, 1);
	}
	
	
	if (pickup_slot != -1) {
		// Item
		iitem = inv_grid[# 0, pickup_slot];
		sx = (iitem mod spr_inv_items_columns) * cell_size;
		sy = (iitem mod spr_inv_items_rows) * cell_size;
		// Draw Item
		draw_sprite_part_ext(
						spr_inv_items, 0, 
						sx, sy, cell_size, cell_size,
						mousex, mousey, scale, scale, c_white, 1
		);
	
		var inum = inv_grid[# 1, pickup_slot];
		draw_text_color(mousex + (cell_size * scale * 0.5), mousey, string(inum), c, c, c, c, 1);
	}
	if (keyMenu) {
			show_items = false;	
	}
}
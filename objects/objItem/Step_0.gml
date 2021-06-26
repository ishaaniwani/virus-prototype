if (drop_move) {
	x = lerp(x, goal_x, 0.1);
	y = lerp(y, goal_y, 0.1);
	if ( abs(x - goal_x) < 1 and abs(y - goal_y) < 1) {
		drop_move = false;	
	}
} else {
	if (!keyboard_check(ord("Z"))) exit;
	
	var px = objScientist.x;
	var py = objScientist.y;
	var r = 10;
	
	if (point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) {
		
		// Are we on top of the player
		r = 2;
		if (!point_in_rectangle(px, py, x - r, y - r, x + r, y + r)) {
			//move towards the player for pickup
			x = lerp(x, px, 0.1);
			y = lerp(y, py, 0.1);
		} else {	// pickup item
			var in = item_num;
			
			with (objInventory) {
				var ds_inv = ds_inventory;
				var picked_up = false;
				
				//check if item ixists in inventory
				var yy = 0; repeat(inv_slots) {
					if (ds_inv[# 0, yy] == in) {
						ds_inv[# 1, yy] += 1;
						picked_up = true;
						break;
					} else {
						yy += 1;	
					}
				}
				
				//otherwise, add item to an empy slot of there is one
				if (!picked_up) {	
					//check if item ixists in inventory
					var yy = 0; repeat(inv_slots) {
						if (ds_inv[# 0, yy] == item.none) {
							ds_inv[# 1, yy] += 1;
							picked_up = true;
							break;
						} else {
							yy += 1;	
						}
					}
				}
			}
			
			// Destroy Item if Picked Up
			if (picked_up) {
				instance_destroy();
				show_debug_message("Picked up an item");
			}
		}
		
	}
}
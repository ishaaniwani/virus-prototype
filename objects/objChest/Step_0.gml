/// @description Insert description here
// You can write your code in this editor

// Really subtle trick to make the chest appear in front of
// player object while player is walking behind it
// Makes the chest pop out, and is more realistic.

if (place_meeting(x, y, objScientist) and chestTriggered == false) {
	if (keyboard_check_pressed(ord("Z"))) {
		image_index = 1;
		chestTriggered = true;
		audio_play_sound(sfxwoodenobject, 0, false);
		
		// Shoot out the items from the chest
		if (drop_loot_1 != -1) {
			var inst = instance_create_layer(x, y, "Instances", objItem);
			var  ss_item = drop_loot_1;
			with (inst) {
				item_num = ss_item;
				x_frame = item_num mod (spr_width / cell_size);
				y_frame = item_num div (spr_width / cell_size);
			}	
		}
		if (drop_loot_2 != -1) {
			var inst = instance_create_layer(x, y, "Instances", objItem);
			var ss_item = drop_loot_2;
			with (inst) {
				item_num = ss_item;
				x_frame = item_num mod (spr_width / cell_size);
				y_frame = item_num div (spr_width / cell_size);
			}	
		}
		if (drop_loot_3 != -1) {
			var inst = instance_create_layer(x, y, "Instances", objItem);
			var ss_item = drop_loot_3;
			with (inst) {
				item_num = ss_item;
				x_frame = item_num mod (spr_width / cell_size);
				y_frame = item_num div (spr_width / cell_size);
			}	
		}
		if (drop_loot_4 != -1) {
			var inst = instance_create_layer(x, y, "Instances", objItem);
			var ss_item = drop_loot_4;
			with (inst) {
				item_num = ss_item;
				x_frame = item_num mod (spr_width / cell_size);
				y_frame = item_num div (spr_width / cell_size);
			}	
		}
	}
 }     
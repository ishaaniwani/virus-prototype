 // Get Player Input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

// Used to interact with game objects (ex. NPC dialogue)
keyInteract = keyboard_check_pressed(ord("Z"));
// Used to fast forward dialogue and exit menus
keyExit = keyboard_check(ord("X"));

if(keyInteract and (!inventory_opened or in_conversation or exit_marker)) {
	
	// If you're not currently talking to someone, then try checking!
	if (active_textbox == noone) {
		
		
		//var inst_npc = collision_rectangle(x - radius, y - radius, x + radius, y + radius, objParentNPCObject, false, false);
		//var inst_obj = collision_rectangle(x - radius, y - radius, x + radius, y + radius, objParentInteractableObject, false, false);
		
		var inst_npc;
		var inst_obj;
		
		
		if (direction == 0) {
			inst_npc = collision_rectangle(x, y - radius, x + radius, y + radius, objParentNPCObject, false, false);
			inst_obj = collision_rectangle(x, y - radius, x + radius, y , objParentInteractableObject, false, false);	
		} else if (direction == 90) {
			inst_npc = collision_rectangle(x - radius, y , x + radius, y - radius, objParentNPCObject, false, false);
			inst_obj = collision_rectangle(x - radius, y , x + radius, y - radius, objParentInteractableObject, false, false);	
		} else if (direction == 180) {
			inst_npc = collision_rectangle(x, y , x - radius, y - radius, objParentNPCObject, false, false);
			inst_obj = collision_rectangle(x, y , x - radius, y - radius, objParentInteractableObject, false, false);	
		} else if (direction == 270) {
			inst_npc = collision_rectangle(x - radius, y - radius , x, y + radius, objParentNPCObject, false, false);
			inst_obj = collision_rectangle(x - radius, y - radius , x, y + radius, objParentInteractableObject, false, false);
		}
		
		// NPC's get priority, but if already in a conversation (it may have changed during the step
		// then don't go ahead and interact, wait until current conversation is over.
		if (inst_npc != noone and !in_conversation) {
			show_debug_message("triggered npc?");
			// Get the information of the NPC you're colliding with, and give that to 
			// a script to create the textbox
			with (inst_npc) {
				if (array_length_1d(text) == 0) exit; // could be problematic in the future.
				var tbox = CreateTextbox(text, speakers, next_line, scripts);		
			}
			
			// Update the conversation checkers so that another convo isn't started
			active_textbox = tbox;
			in_conversation = true;
		} else if (inst_obj != noone and !in_conversation) {
			show_debug_message("triggered obj");
			// Same thing but with description boxes
			with (inst_obj) {
				if (array_length_1d(text) == 0) exit; // could be problematic in the future.
				var tbox = CreateDescriptionTextbox(text, speakers, next_line, scripts);	
			}
			
			active_textbox = tbox;
			in_conversation = true;
		}
	} else {
		if (!instance_exists(active_textbox)) {
			active_textbox = noone;
		}
	}
}

// Below is player movement, do not take input from player while inventory is opened,
// or if you're in a conversation, you don't want to freeze the player in a walking frame
// so set the idle version of each frame.
if (in_conversation or inventory_opened or exit_marker) {
	sprite_index = spriteIdle;
	image_index = player_direction;
	exit;
}


// Determine direction of player
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);

// Determine if inputs aren't cancelling each other out
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

script_execute(state);
// Get Player Input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

// Used to interact with game objects (ex. NPC dialogue)
keyInteract = keyboard_check_pressed(ord("Z"));
// Used to fast forward dialogue and exit menus
keyExit = keyboard_check(ord("X"));

if(keyInteract and !inventory_opened) {
	
	if (active_textbox == noone) {
		var inst_npc = collision_rectangle(x - radius, y - radius, x + radius, y + radius,
							objParentNPCObject, false, false);
							
		var inst_obj = collision_rectangle(x - radius, y - radius, x + radius, y + radius,
							objParentInteractableObject, false, false);
	
		if (inst_npc != noone) {
			with (inst_npc) {
				var tbox = CreateTextbox(text, speakers);		
			}
			active_textbox = tbox;
			in_conversation = true;
		} else if (inst_obj != noone) {
			with (inst_obj) {
				var tbox = CreateDescriptionTextbox(text, speakers);	
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

if (in_conversation or inventory_opened) {
	sprite_index = spriteIdle;
	image_index = player_direction;
	exit;
}

// Determine direction of player
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);

// Determine if inputs aren't cancelling each other out
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

// Movement
// Move horizontal with correct magnitude and speed
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
// Move vertical with correct magnitude and speed
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

// For diagonal movement, it feels better with this, more "gamefeel"
if (hSpeed != 0 and vSpeed != 0) {
	hSpeed *= 1.15; 
	vSpeed *= 1.15;
}

PlayerCollision();

// Update Sprite Index
var _oldSprite = sprite_index;
// if trying to move, then animate sprite, otherwise don't
if (inputMagnitude != 0) {
	direction = inputDirection; //
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
// if sprite index didn't change, then animation didn't change
if (_oldSprite != sprite_index) localFrame = 0;

//Update Image Index
PlayerAnimateSprite();
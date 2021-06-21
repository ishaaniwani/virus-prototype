// Get Player Input
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);

/** Old Code, keep for now
// keyActivate = keyboard_check_pressed(vk_space);
// keyAttack = keyboard_check_pressed(vk_shift);
// keyItem = keyboard_check_pressed(vk_control);
**/

// Used to interact with game objects (ex. NPC dialogue)
keyInteract = keyboard_check(ord("Z"));
// Used to fast forward dialogue and exit menus
keyExit = keyboard_check(ord("X"));
// Used to open menu
keyMenu = keyboard_check(ord("C"));

// Determine direction of player
inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);
// Determine if inputs aren't cancelling each other out
inputMagnitude = (keyRight - keyLeft != 0) or (keyDown - keyUp != 0);

//Option 2 - limit on diagonal speed
// Movement
// Move horizontal with correct magnitude and speed
hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
// Move vertical with correct magnitude and speed
vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);
 
/**
 //Option 1 - no limit on diagonal speed
hSpeed = sign(keyRight - keyLeft) * speedWalk;
vSpeed = sign(keyDown - keyUp) * speedWalk;
**/

// For diagonal movement, it feels better with this, more "gamefeel"
if (hSpeed != 0 and vSpeed != 0) {
	hSpeed *= 1.15; 
	vSpeed *= 1.15;
}

PlayerCollision();

//x += hSpeed;
//y += vSpeed;

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
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateFree(){
	// Movement
	// Move horizontal with correct magnitude and speed
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	// Move vertical with correct magnitude and speed
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	// For diagonal movement, it feels better with this, more "gamefeel"
	if (hSpeed != 0 and vSpeed != 0) {
		hSpeed *= 1.15; //1.15 is good but produces jitter
		vSpeed *= 1.15; //1.15 is good but produced jitter
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
	
	//Change State
	
}
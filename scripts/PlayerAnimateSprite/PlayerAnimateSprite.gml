// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimateSprite(){
	//Update Sprite
	var _cardinalDirection = round(direction / 90); // 8 directional movement
	var _totalFrames = sprite_get_number(sprite_index) / 4; // change to 8?
	image_index = localFrame + (_cardinalDirection * _totalFrames);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;

	// If animation would loop on next game step
	if (localFrame >= _totalFrames) {
		animationEnd = true;
		localFrame -= _totalFrames; // resets back to first frame
	} else animationEnd = false;
}
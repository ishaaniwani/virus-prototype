// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	var _collision = false;
	
	// Horizontal Collision Check with wall
	if ((place_meeting(x + speedWalk, y, objWall) and hSpeed > 0) or (place_meeting(x - speedWalk, y, objWall)) and hSpeed < 0) {
		hSpeed = 0;
		_collision = true;
	}
	
	// Vertical collision check with wall
	if ((place_meeting(x, y + 1, objWall) and vSpeed > 0) or (place_meeting(x, y - 1, objWall) and vSpeed < 0)) {
		vSpeed = 0;
		_collision = true;
	}
	
	// Vertical Move Commit
	y += vSpeed;
	// Horizontal Move Commit
	x += hSpeed;
	
	return _collision;
}
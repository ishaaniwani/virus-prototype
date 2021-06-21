// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	var _collision = false;
	
	// Vertical collision check with wall
	if ((place_meeting(x, y + speedWalk, objWall) and sign(vSpeed) > 0) or (place_meeting(x, y - speedWalk, objWall) and sign(vSpeed) < 0)) {
		vSpeed = 0;
		_collision = true;
	}
	
	// Horizontal Collision Check with wall
	if (place_meeting(x + speedWalk, y, objWall) or place_meeting(x - speedWalk, y, objWall)) {
		hSpeed = 0;
		_collision = true;
	}
	
	/** Old code with tilesets
	// Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + hSpeed, y)) {
		// how many movements left before hitting?
		x -= x mod TILE_SIZE; 
		if (sign(hSpeed) == 1) x += TILE_SIZE - 1;
		// if gonna hit, stop the player
		hSpeed = 0;
		_collision = true;
	}
	
	
	
	// Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + vSpeed)) {
		// how many movements left before hitting?
		y -= y mod TILE_SIZE; 
		if (sign(vSpeed) == 1) y += TILE_SIZE - 1;
		// if gonna hit, stop the player
		vSpeed = 0;
		_collision = true;
	}
	**/
	
	// Vertical Move Commit
	y += vSpeed;
	// Horizontal Move Commit
	x += hSpeed;
	
	return _collision;
}
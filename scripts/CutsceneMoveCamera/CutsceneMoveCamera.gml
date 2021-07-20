// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneMoveCamera(cx, cy, relative){

	// Determine camera destination
	var dest_x, dest_y;
	var cur_x, cur_y;
	cur_x = camera_get_view_x(view_camera[0]);
	cur_y = camera_get_view_y(view_camera[0]);
	
	if (!relative) {
		dest_x = cx;
		dest_y = cy;
	} else {
		dest_x = cur_x + cx;
		dest_y = cur_y + cy;
	}
	
	// Calculate how much camera has to move, and in what direction
	var move_x, move_y;
	move_x = dest_x - cur_x;
	move_y = dest_y - cur_y;
	
	// Increment over fraction of needed movement
	while (cur_x != dest_x and cur_y != dest_y) {
		
		// Increment x
		if (abs(dest_x - cur_x) < 10) {
			cur_x = dest_x;
		}
		cur_x += move_x/25;
		
		// Increment y
		if (abs(dest_y - cur_y) < 10) {
			cur_y = dest_y;	
		}
		cur_y += move_y/25;
		
		camera_set_view_pos(view_camera[0], cur_x, cur_y);
	}
	CutsceneEndAction();
}
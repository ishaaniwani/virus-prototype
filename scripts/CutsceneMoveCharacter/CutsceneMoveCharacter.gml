// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneMoveCharacter(mobj, mx, my, mrelative, mspd){

	if (x_dest == 1) {
		if (!mrelative) {
			x_dest = mx;
			y_dest = my;
		} else {
			x_dest = obj.x + mx;
			y_dest = obj.y + my;
		}
	}
	
	var xx = x_dest;
	var yy = y_dest;
	
	with (mobj) {
		sprite_index = spr_walk;
		
		if (point_distance(x, y, xx, yy) >= mspd) {
			var dir = point_direction(x, y, xx, yy);
			var ldirx = lengthdir_x(mspd, dir);
			var ldiry = lengthdir_y(mspd, dir);
		
			if(ldirx != 0) {
				image_xscale = sign(ldirx);	
			}
		
			x += ldirx;
			y += ldiry;
			
		} else {
			x = xx;
			y = yy;
			
			with (other) {
				x_dest = -1;
				y_dest = -1;
				CutsceneEndAction();
			}
		}
	}
}
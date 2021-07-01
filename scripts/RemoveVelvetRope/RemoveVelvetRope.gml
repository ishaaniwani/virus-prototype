// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RemoveVelvetRope(){
	
	with (objVelvetRope) {
		if (!ropeup) exit;
		image_speed = 1;
		alarm[0] = 3 * 60;
	}
	
	with (objCrouton) {
		text = ["I've unlocked it. Good luck!"];
		speakers = [id];
		next_line = [-1];
		scripts = [-1];
	}
}
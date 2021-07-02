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
	
	// HAS TO BE NAMED DIFFERENTLY FROM DEFAULT VALUES
	var new_text = ["Magically, - and not due to the fact that its hard to sprite, the velvet rope falls down."];
	var new_speakers = [id];
	var new_next_line = [-1];
	var new_scripts = [-1];
	
	
	with (objScientist) {
		exit_marker = true;	
	}
	
	
	CreateDescriptionTextbox(new_text, new_speakers, new_next_line, new_scripts);
	
}
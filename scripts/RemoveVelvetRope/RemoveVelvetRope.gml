// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RemoveVelvetRope(){
	
	var elements = layer_get_all_elements("Text");
	for (var i = 0; i < array_length_1d(elements); i++) {
	     if (layer_get_element_type(elements[i]) == objTextBox) {
				var layerelement = elements[i];
				var inst = layer_instance_get_instance(layerelement);
				instance_destroy(inst)
		}
	}
		
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
		in_conversation = true;
		active_textbox = CreateDescriptionTextbox(new_text, new_speakers, new_next_line, new_scripts);
	}
}
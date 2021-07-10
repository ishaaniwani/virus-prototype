// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RemoveVelvetRope(){
	
	// Destroy all textboxes before this new textbox pops up.
	var elements = layer_get_all_elements("Text");
	for (var i = 0; i < array_length_1d(elements); i++) {
	     if (layer_get_element_type(elements[i]) == objTextBox) {
				var layerelement = elements[i];
				var inst = layer_instance_get_instance(layerelement);
				instance_destroy(inst)
		}
	}
	
	// Change rope
	with (objVelvetRope) {
		image_index = 1; 
		ropeup = false;
		text = [];
		speakers = [];
		with (hitbox) {
			instance_destroy();	
		}
	}
	
	// Change Croutons text
	with (objCroutonTextBox) {
		text = ["I've unlocked it. Good luck!"];
		speakers = [id];
		next_line = [-1];
		scripts = [-1];
	}
}
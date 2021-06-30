// @description create_textbox

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateDescriptionTextbox(_text, _speakers){
	var tbox = instance_create_layer(0, 0, "Text", objDescriptionBox);
	
	with(tbox) {
		text = _text;
		speakers = _speakers;
		
		var len = array_length_1d(text);
		var i = 0; repeat(len) {
			voices[i] = _speakers[i].voice;
			i++;
		}
		event_perform(ev_other, ev_user1);
	}
	
	return tbox;
}
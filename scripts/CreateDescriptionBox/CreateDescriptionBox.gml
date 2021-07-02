// @description create_textbox

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateDescriptionTextbox(_text, _speakers, _next_line, _scripts){
	var tbox = instance_create_layer(0, 0, "Text", objDescriptionBox);
	
	with(tbox) {
		text = _text;
		speakers = _speakers;
		next_line = _next_line;
		scripts = _scripts;
		
		var len = array_length_1d(text);
		var i = 0; repeat(len) {
			voices[i] = _speakers[i].voice;
			i++;
		}
		event_perform(ev_other, ev_user1);
	} 
	
	return tbox;
}
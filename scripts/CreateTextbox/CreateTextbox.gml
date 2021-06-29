// @description create_textbox

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateTextbox(_text, _speakers){
	var tbox = instance_create_layer(0, 0, "Text", objTextBox);
	
	with(tbox) {
		text = _text;
		speakers = _speakers;
		
		var len = array_length_1d(text);
		var i = 0; repeat(len) {
			names[i] = speakers[i].speaker_name;
			portraits[i] = speakers[i].portrait_index;
			voices[i] = speakers[i].voice;
			i++;
		}
	}
	
	return tbox;
}
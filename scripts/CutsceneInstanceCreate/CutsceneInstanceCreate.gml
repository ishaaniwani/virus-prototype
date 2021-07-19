// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneInstanceCreate(x, y, layer_id, obj){
	var inst = instance_create_layer(x, y, layer_id, obj);
	CutsceneEndAction();
	return inst;
}
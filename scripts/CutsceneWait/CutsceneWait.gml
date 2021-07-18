// description cutscene_wait
// @arg seconds
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CutsceneWait(seconds){
	timer++;
	if (timer >= seconds * room_speed) {
		timer = 0;	
		CutsceneEndAction();
	}
}
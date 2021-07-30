  
// Objects with lower depth execute first
// This ensures that global varables are initialized
// Before any object uses it in their create events
depth = -999;

global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1
global.targetDirection = 0;

rope_unlocked = false;

cutscene_music_playing = false;

hospitalCutscenePlayed = false;
firstBusCutscenePlayed = false;

text_color = c_white;

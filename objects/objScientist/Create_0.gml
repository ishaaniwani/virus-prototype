collisionMap = layer_tilemap_get_id(layer_get_id("Collisions"));

image_speed = 0;
hSpeed = 0; // horizontal speed
vSpeed = 0; // vertical speed
speedWalk = 1.25; // movement speed: 2.0 pixels a frame

// makes it easy to change the character
spriteRun = sprScientistRun;
spriteIdle = sprScientist;
localFrame = 0;

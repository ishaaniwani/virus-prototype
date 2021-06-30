type = "Interactable";
voice = snd_voice3 ;
text = ["This rope blocks your way."];
speakers = [id];
ropeup = true;
image_speed = 0;
image_index = 0;

hitbox = instance_create_layer(x, y, "Walls", objWall);
RemoveVelvetRope();
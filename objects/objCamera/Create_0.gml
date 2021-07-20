min_view_x = 0;
min_view_y = 0;
max_view_x = room_width - camera_get_view_width(view_camera[0]);
max_view_y = room_height - camera_get_view_height(view_camera[0]);

targetFollowing = objCrouton;
cam_speed = 1; // maximum speed, means there is no lerping.

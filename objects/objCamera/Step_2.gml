/// @description Camera, Post Processing

#region Move Camera

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

cx = targetFollowing.x - halfViewWidth;
cy = targetFollowing.y - halfViewHeight;

cx = clamp(cx, min_view_x, max_view_x);
cy = clamp(cy, min_view_y, max_view_y);

cam_x = camera_get_view_x(view_camera[0]);
cam_y = camera_get_view_y(view_camera[0]);

camera_set_view_pos(view_camera[0], 
	lerp(cam_x, cx, cam_speed), lerp(cam_y, cy, cam_speed));

view_xport[0] = floor(view_xport[0]);
view_yport[0] = floor(view_yport[0]); 

#endregion

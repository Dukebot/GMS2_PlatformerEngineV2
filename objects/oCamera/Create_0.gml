/// @description 

//get dimensions
var width = camera_get_view_width(view_camera[0]);
var height = camera_get_view_height(view_camera[0]);

//Create the camera
camera = camera_create_view(0, 0, width, height, 0, -1, -1, 128, 128);
view_set_camera(0, camera);

//camera following variables
follow = noone;
moveToX = x;
moveToY = y;

//how fast the camera pans
cameraPanSpeedInitial = 0.15; //lower = slowed pan
cameraPanSpeed = cameraPanSpeedInitial;

//reset the camera to default pan speed
alarm[CAMERA_RESET] = 3;

//movo onto main room
room_goto_next();
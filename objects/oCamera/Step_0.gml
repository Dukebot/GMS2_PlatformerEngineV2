/// @description 

//move towards moveToX and moveToY
x = lerp(x, moveToX, cameraPanSpeed);
y = lerp(y, moveToY, cameraPanSpeed);

camera_set_view_pos(camera,
	x - camera_get_view_width(camera)/2,
	y - camera_get_view_height(camera)/2
);

if (follow != noone) {
	var buffer = global.tileSize/2;
	moveToX = follow.x;
	moveToY = follow.y - buffer;
}

var xx = clamp(camera_get_view_x(camera), 0, room_width - camera_get_view_width(camera));
var yy = clamp(camera_get_view_y(camera), 0, room_height - camera_get_view_height(camera));
camera_set_view_pos(camera, xx, yy);
///@retrn true if is on ground
var isOnGround = false;

var side = bbox_bottom;
var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);

if (t1 == SOLID or t2 == SOLID) {
	isOnGround = true;	
}

return isOnGround;
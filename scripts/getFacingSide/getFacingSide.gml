///@param speedX
var speedX = argument0;

///@return bbox side
var side;

if (speedX > 0) side = bbox_right else side = bbox_left;

return side;
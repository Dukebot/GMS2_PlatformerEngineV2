///@description check collisions and apply movement


//We need an integer value for collision code:

//apply carried over decimals
speedX += speedDecimalX;
speedY += speedDecimalY;

//save and substract some decimals
speedDecimalX = speedX - (floor(abs(speedX)) * sign(speedX));
speedDecimalY = speedY - (floor(abs(speedY)) * sign(speedY));
speedX -= speedDecimalX;
speedY -= speedDecimalY;


//horizontal collision:

//Determine which side to test
var side = getFacingSideX(speedX); 

//check top and bottom of side
var t1 = tilemap_get_at_pixel(global.map, side + speedX, bbox_top);
var t2 = tilemap_get_at_pixel(global.map, side + speedX, bbox_bottom);
if (t1 != VOID or t2 != VOID) {
	//Collision found!
	
	//Move to the tile for pixel perfect
	if (speedX > 0) {
		x = x - (x mod global.tileSize) + global.tileSize - 1 - (side - x);
	} else {
		x = x - (x mod global.tileSize) - (side - x);
	}
	speedX = 0;
}


//vertical collision:

//Determine which side to test
var side = getFacingSideY(speedY); 

//check left and right sides
var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + speedY);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + speedY);
if (t1 != VOID or t2 != VOID) {
	//Collision found!
	
	//Move to the tile for pixel perfect
	if (speedY > 0) {
		y = y - (y mod global.tileSize) + global.tileSize - 1 - (side - y);
	} else {
		y = y - (y mod global.tileSize) - (side - y);
	}
	speedY = 0;
}


//Aply Movement
	
x += speedX;
y += speedY;
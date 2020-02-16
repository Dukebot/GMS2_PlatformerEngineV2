getInput();
calculateMovement();

//check state
if (speedX == 0) state = states.IDLE;

//check if falling off ledge
var side = bbox_bottom;
var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);

if (t1 == VOID and t2 == VOID) {
	//we've fallen of a ledge
	state = states.JUMP;
	jumps = jumpsInitial;
}

if (attack) {
	show_debug_message("attack pressed");
	state = states.ATTACK;
	image_index = 0;
}

if (jump) {
	jumped();
}

/*if (block) {
	state = states.BLOCK;
	speedX = 0;
}

if (down) {
	state = states.CROUCH;
	speedX = 0;
}*/
blockStateCheck();

move();
animate();
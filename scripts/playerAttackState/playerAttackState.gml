getInput();
calculateMovement();

show_debug_message("attack state");

//check state
//if animation has ended
//if (image_number >= image_number - sprite_get_speed(sprite_index)/room_speed) {
if (animationEnded()) {
	if (not onGround()) state = states.JUMP;
	else if (speedX != 0) state = states.WALK;
	else state = states.IDLE;
}

//This is a JUMP but still being on ATTACK state
if (jump) {
	jumped();
	state = states.ATTACK;
}
//enable smaller jumps
if (speedY < 0 and not jumpHeld) {
	speedY = max(speedY, jumpSpeed/jumpDampner);
}

move();
animate();
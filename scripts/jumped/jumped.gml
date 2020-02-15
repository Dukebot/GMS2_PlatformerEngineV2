///@description standard jump off the ground
if (onGround()) {
	jumps = jumpsInitial;
}

if (jumps > 0) {
	state = states.JUMP;
	speedY = jumpSpeed;
	jumps--;
}
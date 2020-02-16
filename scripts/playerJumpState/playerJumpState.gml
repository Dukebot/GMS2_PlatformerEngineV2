getInput();
calculateMovement();

//check state
if (onGround()) {
	if (speedX != 0) state = states.WALK;
	else state = states.IDLE;
	
	if (speedY > 0) {
		instanceCreate(oPlayerDustLand, x, y, "Dust");	
	}
}

if (attack) {
	show_debug_message("attack pressed");
	state = states.ATTACK;
	image_index = 0;
}

//enable double jumps
if (jump) {
	jumped();	
}

//enable smaller jumps
if (speedY < 0 and not jumpHeld) {
	speedY = max(speedY, jumpSpeed/jumpDampner);
}

move();
animate();
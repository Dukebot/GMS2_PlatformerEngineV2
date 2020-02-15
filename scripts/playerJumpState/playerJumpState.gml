getInput();
calculateMovement();

//check state
if (onGround()) {
	if (speedX != 0) state = states.WALK;
	else state = states.IDLE;
}

if (attack) {
	show_debug_message("attack pressed");
	state = states.ATTACK;
	image_index = 0;
}

move();
animate();
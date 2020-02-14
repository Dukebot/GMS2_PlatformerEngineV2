getInput();
calculateMovement();

//check state
if (speedX == 0) state = states.IDLE;

if (attack) {
	show_debug_message("attack pressed");
	state = states.ATTACK;
	image_index = 0;
}

move();
animate();
getInput();
calculateMovement();

//check state
if (speedX != 0) state = states.WALK;

if (attack) {
	show_debug_message("attack");
	state = states.ATTACK;
	image_index = 0;
}

move();
animate();
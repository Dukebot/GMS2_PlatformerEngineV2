getInput();
calculateMovement();

blockStateCheck();

//check state
if (attack) {
	show_debug_message("attack pressed");
	state = states.ATTACK;
	image_index = 0;
}

if (jump) {
	jumped();
}

move();
animate();
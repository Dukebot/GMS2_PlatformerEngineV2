//gets the input to control the player
getInput();

//Calculate movement based on the input
calculateMovement();

//Check for moving state
if (speedX != 0) state = states.WALK;

//Check for attack state
if (attack) {
	show_debug_message("attack");
	state = states.ATTACK;
	image_index = 0;
}

//Check for jump state
if (jump) {
	jumped();
}

//Check for block state
/*if (block) {
	state = states.BLOCK;
	speedX = 0;
}*/

blockStateCheck();

//Check for collisions and apply movement
move();

//Play the current animation
animate();
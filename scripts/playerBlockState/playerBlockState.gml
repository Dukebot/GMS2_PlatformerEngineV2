getInput();
calculateMovement();

//check state
if (attack) {
	show_debug_message("attack pressed");
	state = states.ATTACK;
	image_index = 0;
}

if (block) {
	speedX = 0;
} else {
	if (speedX != 0) {
		if (not onGround()) state = states.JUMP;
		else state = states.WALK;
	} else {
		state = states.IDLE;	
	}
}

if (jump) {
	state = states.JUMP;
	speedY = jumpSpeed;
}



move();
animate();
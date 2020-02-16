if (block) {
	if (down) state = states.CROUCH_BLOCK;
	else state = states.BLOCK;
	speedX = 0;
} else {
	if (down) {
		state = states.CROUCH;
		speedX = 0;
	} else {
		if (speedX != 0) {
			if (not onGround()) state = states.JUMP;
			else state = states.WALK;
		} else {
			state = states.IDLE;	
		}
	}
}
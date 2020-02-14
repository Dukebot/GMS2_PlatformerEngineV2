getInput();
calculateMovement();

//check state
//if animation has ended
if (image_number >= image_number - sprite_get_speed(sprite_index)/room_speed) {
	if (speedX != 0) state = states.WALK else state = states.IDLE;
}

move();
animate();
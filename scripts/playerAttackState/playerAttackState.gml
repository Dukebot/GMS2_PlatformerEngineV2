getInput();
calculateMovement();

show_debug_message("attack state");

//check state
//if animation has ended
//if (image_number >= image_number - sprite_get_speed(sprite_index)/room_speed) {
if (animationEnded()) {
	if (speedX != 0) state = states.WALK else state = states.IDLE;
}

move();
animate();
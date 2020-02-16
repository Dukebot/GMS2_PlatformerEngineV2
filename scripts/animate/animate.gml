//4. Apply Animations
sprite_index = spritesArray[state];
mask_index = maskArray[state];
image_xscale = facing;

if (state == states.JUMP) {
	if (speedY < 0) image_index = 0;
	else image_index = 1;
}
else if (state == states.ATTACK) {
	if (not onGround()) sprite_index = sPlayerAirAttack;
	else {
		if (speedX != 0) sprite_index = sPlayerAttackWalk;
		else sprite_index = sPlayerAttack;
	}
}
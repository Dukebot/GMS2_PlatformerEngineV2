///@description Set up controls for the player
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
attack = keyboard_check_pressed(vk_enter);
jump = keyboard_check_pressed(vk_space);
jumpHeld = keyboard_check(vk_space);
block = keyboard_check(ord("Z"));
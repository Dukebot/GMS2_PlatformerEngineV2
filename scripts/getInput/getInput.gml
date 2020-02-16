///@description Set up controls for the player

//Keyboard Input
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
attack = keyboard_check_pressed(vk_enter);
jump = keyboard_check_pressed(vk_space);
jumpHeld = keyboard_check(vk_space);
block = keyboard_check(ord("Z"));

//Controller Input
var device = 0;
if (gamepad_is_connected(device)) {
	var deadZone = 0.3;
	
	left = gamepad_axis_value(device, gp_axislh) < - deadZone or left;
	right = gamepad_axis_value(device, gp_axislh) > deadZone or right;
	
	up = gamepad_axis_value(device, gp_axislv) < - deadZone or up;
	down = gamepad_axis_value(device, gp_axislv) > deadZone or down;
	
	attack = gamepad_button_check_pressed(device, gp_face2) or attack;
	jump = gamepad_button_check_pressed(device, gp_face1) or jump;
	jumpHeld = gamepad_button_check(device, gp_face1) or jumpHeld;
	block = gamepad_button_check(device, gp_shoulderr) or block;
}
/// @description 

//1. Get INPUT
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

//2. Calculate Movements
speedX += (right - left)*walkSpeed;

//Friction
speedX = lerp(speedX, 0, Friction);

//stop
if (abs(speedX) <= 0.1) speedX = 0;

//face the correct way
if (speedX != 0) facing = sign(speedX);

//limit the speed
speedX = min(abs(speedX), maxSpeedX) * facing;

//3. Apply Movements
x += speedX;
y += speedY;

//4. Apply Animations
image_xscale = facing;

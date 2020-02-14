speedX += (right - left)*walkSpeed;

//Friction
speedX = lerp(speedX, 0, Friction);

//stop
if (abs(speedX) <= 0.1) speedX = 0;

//face the correct way
if (speedX != 0) facing = sign(speedX);

//limit the speed
speedX = min(abs(speedX), maxSpeedX) * facing;
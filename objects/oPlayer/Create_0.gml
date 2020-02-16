/// @description 

//Speeds
speedX = 0;
speedY = 0;

speedDecimalX = 0;
speedDecimalY = 0;

maxSpeedX = 2;
walkSpeed = 1.5;

jumpSpeed = -5;
jumpDampner = 2.5;

jumpsInitial = 2;
jumps = jumpsInitial;

//Friction
Friction = 0.12;

//facing direction
facing = 1;

//Input
left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
jumpHeld = 0;
block = 0;

//states
enum states {
	IDLE, WALK, JUMP, ATTACK, BLOCK, CROUCH, CROUCH_BLOCK
}

//create states array
statesArray[states.IDLE] = playerIdleState;
statesArray[states.WALK] = playerWalkState;
statesArray[states.JUMP] = playerJumpState;
statesArray[states.ATTACK] = playerAttackState;
statesArray[states.BLOCK] = playerBlockState;
statesArray[states.CROUCH] = playerCrouchState; 
statesArray[states.CROUCH_BLOCK] = playerCrouchBlockState;

//create sprites array
spritesArray[states.IDLE] = sPlayerIdle;
spritesArray[states.WALK] = sPlayerWalk;
spritesArray[states.JUMP] = sPlayerJump;
spritesArray[states.ATTACK] = sPlayerAttack;
spritesArray[states.BLOCK] = sPlayerBlock;
spritesArray[states.CROUCH] = sPlayerCrouch; 
spritesArray[states.CROUCH_BLOCK] = sPlayerCrouchBlock;

//create mask array
maskArray[states.IDLE] = sPlayerIdle;
maskArray[states.WALK] = sPlayerIdle;
maskArray[states.JUMP] = sPlayerIdle;
maskArray[states.ATTACK] = sPlayerIdle;
maskArray[states.BLOCK] = sPlayerIdle;
maskArray[states.CROUCH] = sPlayerCrouch; 
maskArray[states.CROUCH_BLOCK] = sPlayerCrouch;

state = states.IDLE;
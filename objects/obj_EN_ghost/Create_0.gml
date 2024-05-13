homeRadius = 50
targetDistance = 50
homeX = x + homeRadius/2
homeY = y +homeRadius/2
targetDir = 0
targetX = lengthdir_x(targetDistance,targetDir) + x//fix with point_distance
targetY = lengthdir_y(targetDistance,targetDir) + y
momentumX = 0
momentumY = 0
acceleration = 0.001
maxSpeed = 0.25
moveDirectionX = sign(homeX-targetX)
moveDirectionY = sign(homeY-targetY)
hspd = 0
vspd = 0
image_alpha = 0.6

enum GHOST_ENEMY_STATES
{
	IDLE,
	ACTIVATED,
	CHASING
}

mState = GHOST_ENEMY_STATES.IDLE
mInnerState = 0; // 0-enter, 1-update, 2-exit
mNextState = mState

ChangeState = function(nextState)
{
	mNextState = nextState;
	mInnerState = 2;
}
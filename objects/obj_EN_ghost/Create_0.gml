homeRadius = 15
targetDistance = 10
homeX = x + homeRadius/2
homeY = y +homeRadius/2
targetDir = 0
targetX = lengthdir_x(targetDistance,targetDir) + x//fix with point distance
targetY = lengthdir_y(targetDistance,targetDir) + y
momentumX = 0
momentumY = 0
acceleration = 0.02
maxSpeed = 1
moveDirectionX = sign(homeX-targetX)
moveDirectionY = sign(homeY-targetY)

hspd = 0
vspd = 0


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
homeRadius = 15
homeX = x + homeRadius/2
homeY = y
momentum = 0
acceleration = 0.002
maxSpeed = 1.2
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
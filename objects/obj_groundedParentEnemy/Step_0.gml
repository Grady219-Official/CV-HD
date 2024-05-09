switch (mState)
{
	case ENEMY_STATES.IDLE:
	{
		scr_SM_enemyIdle()
	break;
	}
	case ENEMY_STATES.ACTIVATED:
	{
		scr_SM_enemyActive()
	break;
	}
	case ENEMY_STATES.CHASING:
	{
		scr_SM_enemyChasing()
	break;
	}
}

update_movement()
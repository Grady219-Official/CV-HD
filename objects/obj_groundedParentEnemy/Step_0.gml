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
	case ENEMY_STATES.ATTACK:
	{
		scr_SM_enemyAttack()
	break;
	}
}

update_movement()
switch (mState)
{
	case SKELE_ENEMY_STATES.IDLE:
	{
		scr_SM_skeleEnemyIdle()
	break;
	}
	case SKELE_ENEMY_STATES.ACTIVATED:
	{
		scr_SM_skeleEnemyActive()
	break;
	}
	case SKELE_ENEMY_STATES.CHASING:
	{
		scr_SM_skeleEnemyChasing()
	break;
	}
	case SKELE_ENEMY_STATES.ATTACK:
	{
		scr_SM_skeleEnemyAttack()
	break;
	}
}

update_movement()
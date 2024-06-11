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
	case SKELE_ENEMY_STATES.RETREAT:
	{
		scr_SM_skeleEnemyRetreat()
	break;
	}
	case SKELE_ENEMY_STATES.ATTACK:
	{
		scr_SM_skeleEnemyAttack()
	break;
	}
}
vspd += grav;
//fraction code
hspd+=hspdFraction
	vspd+=vspdFraction


hspdFraction = hspd - floor(abs(hspd)) * sign(hspd)
	hspd -= hspdFraction
	//if(hspd = 0) hspdFraction = 0
vspdFraction = vspd - floor(abs(vspd)) * sign(vspd)
	vspd -= vspdFraction
	//if(vspd = 0) hvspdFraction = 0

update_movement()
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_loadStage(_chapter,_difficulty)
{
	levelData = 
	{
		player1SpawnX : 0,
		player1SpawnY : 0,
		player1SpawnDirection : "Right",
		player2SpawnX : 0,
		player2SpawnY : 0,
		player2SpawnDirection : "Right",
		player3SpawnX : 0,
		player3SpawnY : 0,
		player3SpawnDirection : "Right",
		player4SpawnX : 0,
		player4SpawnY : 0,
		player4SpawnDirection : "Right",
		player5SpawnX : 0,
		player5SpawnY : 0,
		player5SpawnDirection : "Right",
		player6SpawnX : 0,
		player6SpawnY : 0,
		player6SpawnDirection : "Right",
		enemyHPMultiplier : 1,
		enemyATKMultiplier : 1,
		enemyDEFMultiplier : 1,
		enemyMasteryMultiplier : 1,
		enemySpeedMultiplier : 1,
	};
	switch _chapter
	{
		case "Chapter 1":
		{
			levelData.player1SpawnX = 352
			levelData.player1SpawnY = 2352
			levelData.player1SpawnDirection = "Right"
			levelData.player2SpawnX = 362
			levelData.player2SpawnY = 2352
			levelData.player2SpawnDirection = "Right"
			levelData.player3SpawnX = 372
			levelData.player3SpawnY = 2352
			levelData.player3SpawnDirection = "Right"
			levelData.player4SpawnX = 382
			levelData.player4SpawnY = 2352
			levelData.player4SpawnDirection = "Right"
			levelData.player5SpawnX = 392
			levelData.player5SpawnY = 2352
			levelData.player5SpawnDirection = "Right"
			levelData.player6SpawnX = 402
			levelData.player6SpawnY = 2352
			levelData.player6SpawnDirection = "Right"
			
			if(_difficulty = "Normal")
			{
				enemyHPMultiplier = 1
				enemyATKMultiplier = 1
				enemyDEFMultiplier = 1
				enemyMasteryMultiplier = 1
				enemySpeedMultiplier = 1
			}
			else if(_difficulty = "Hard")
			{
				enemyHPMultiplier = 2
				enemyATKMultiplier = 2
				enemyDEFMultiplier = 2
				enemyMasteryMultiplier = 2
				enemySpeedMultiplier = 2
			}
		break;
		}
		
	}
}
USE dbms_proj_demo
GO


ALTER TABLE [PlayerTable]
DROP COLUMN
      [column14]
      ,[column15]
      ,[column16]
      ,[column17]
      ,[column18]
      ,[column19]
      ,[column20]
      ,[column21]
      ,[column22]; */

-- Adding Goals Column

ALTER TABLE [PlayerTable] 
ADD	[Goals] FLOAT
	,[Goals_per_90] FLOAT 
	,[Assists_per_90] FLOAT
	,[Shots] FLOAT
	,[Shots_per_90] FLOAT
	,[Shots_on_target] FLOAT
	,[Shots_on_target_per_90] FLOAT
	,[Non_penalty_goals] FLOAT
	,[Non_penalty_goals_per_90] FLOAT
	,[NPxG_per_90] FLOAT
	,[Dribbles] FLOAT
	,[Dribbles_per_90] FLOAT
	,[Shot_assists] FLOAT
	,[Shot_assists_per_90] FLOAT
	,[EPV] FLOAT
	,[EPV_per_90] FLOAT
	,[Saves] FLOAT
	,[Saves_per_90] FLOAT
	,[Catches] FLOAT
	,[Catches_per_90] FLOAT
	,[Touches] FLOAT
	,[Touches_per_90] FLOAT
	,[Passes] FLOAT
	,[Passes_per_90] FLOAT
	,[PassesxAttack] FLOAT
	,[PassesxAttack_per_90] FLOAT
	,[Tackles] FLOAT
	,[Tackles_per_90] FLOAT
	,[FLOATerceptions] FLOAT
	,[FLOATerceptions_per_90] FLOAT
	,[Blocks] FLOAT
	,[Blocks_per_90] FLOAT
	,[Clearances] FLOAT
	,[Clearances_per_90] FLOAT
	,[Aerial_duels] FLOAT
	,[Aerial_duels_per_90] FLOAT
	,[Duels] FLOAT
	,[Duels_per_90] FLOAT;


EXEC sp_rename 'PlayerTable.playerID', 'playerId_2', 'COLUMN';
EXEC sp_rename 'PlayerTable.Touches', 'Touch', 'COLUMN';
EXEC sp_rename 'PlayerTable.EPV', 'EPV_1', 'COLUMN';
EXEC sp_rename 'PlayerTable._90s','90s', 'COLUMN';

SELECT * FROM dbo.NewPlayerTableDummy

SELECT *
INTO dbo.NewNewPlayerTableDummy
FROM dbo.PlayerTable AS a
JOIN dbo.master AS b
ON a.playerId_2 = b.playerId;

EXEC sp_rename 'NewNewPlayerTableDummy','NewPlayerTableDummy';

ALTER TABLE NewPlayerTableDummy
ALTER COLUMN isGoal FLOAT;



UPDATE PlayerTableDummy
SET Goals = (SELECT SUM(isGoal) FROM NewPlayerTableDummy WHERE NewPlayerTableDummy.playerId_2 = NewPlayerTableDummy.playerId_2)
WHERE EXISTS (SELECT 1 FROM NewPlayerTableDummy WHERE NewPlayerTableDummy.playerId_2 = NewPlayerTableDummy.playerId_2);

UPDATE NewPlayerTableDummy
SET Goals = (SELECT SUM(Goals) FROM NewPlayerTableDummy WHERE NewPlayerTableDummy.playerId = NewPlayerTableDummy.playerId)
WHERE EXISTS (SELECT 1 FROM NewPlayerTableDummy WHERE NewPlayerTableDummy.playerId = NewPlayerTableDummy.playerId);

UPDATE NewPlayerTableDummy
SET Goals = (SELECT COUNT(Goals) FROM NewPlayerTableDummy WHERE NewPlayerTableDummy.playerId_2 = NewPlayerTableDummy.playerId_2)

--SELECT * FROM dbo.NewPlayerTableDummy
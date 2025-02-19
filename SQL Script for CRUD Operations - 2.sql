/*USE dbms_proj_demo
GO */


/*
select * from dbo.PlayerTable

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
      ,[column22];

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
--SELECT *
--INTO NewPlayerTableDummy
--FROM master
--JOIN PlayerTable
--ON master.playerId = PlayerTable.playerId;

ALTER TABLE NewPlayerTableDummy
ALTER COLUMN isGoal FLOAT;
*/
--ALTER TABLE NewPlayerTableDummy
--DROP COLUMN Blocks, Blocks_per_90;

SELECT * FROM NewPlayerTableDummy

UPDATE NewPlayerTableDummy
SET Goals = (
    SELECT SUM(isGoal) 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Goals_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Goals AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

--------------------------------------------------
UPDATE NewPlayerTableDummy
SET Shots = (
    SELECT SUM(CAST(isShot AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);

select * from dbo.NewPlayerTableDummy

UPDATE NewPlayerTableDummy
SET Shots_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Shots AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

---------------------------------------------
UPDATE NewPlayerTableDummy
SET Shots_on_target = (
    SELECT SUM(CAST(shotOnTarget AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);

select * from dbo.NewPlayerTableDummy

UPDATE NewPlayerTableDummy
SET Shots_on_target_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Shots_on_target AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

------------------------------------------------

UPDATE NewPlayerTableDummy
SET Non_penalty_goals = (
    SELECT SUM(CAST(NPG AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);

select * from dbo.NewPlayerTableDummy

UPDATE NewPlayerTableDummy
SET Non_penalty_goals_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Non_penalty_goals AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

------------------------------------------------



select * from dbo.NewPlayerTableDummy

UPDATE NewPlayerTableDummy
SET NPxG_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(npxG AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

------------------------------------------------

UPDATE NewPlayerTableDummy
SET Dribbles = (
    SELECT SUM(CAST(dribbleWon AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);

select * from dbo.NewPlayerTableDummy

UPDATE NewPlayerTableDummy
SET Dribbles_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Dribbles AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

------------------------------------------------

UPDATE NewPlayerTableDummy
SET EPV_1 = (
    SELECT SUM(CAST(EPV AS float))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);

select * from dbo.NewPlayerTableDummy

UPDATE NewPlayerTableDummy
SET EPV_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(EPV_1 AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

------------------------------------------------

UPDATE NewPlayerTableDummy
SET Saves = (
    SELECT SUM(CAST(keeperSaveTotal AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Saves_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Saves AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

------------------------------------------------

UPDATE NewPlayerTableDummy
SET Catches = (
    SELECT SUM(CAST(collected AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Catches_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Catches AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

UPDATE NewPlayerTableDummy
SET Touch = (
    SELECT SUM(CAST(isTouch AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Touches_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Touch AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

UPDATE NewPlayerTableDummy
SET Passes = (
    SELECT COUNT(type)  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2 AND type = 'Pass'
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Passes_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Passes AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

UPDATE NewPlayerTableDummy
SET PassesxAttack = (
    SELECT COUNT(type)  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2 AND CAST(endX AS FLOAT) > 80 AND type = 'Pass'
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET PassesxAttack_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(PassesxAttack AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

UPDATE NewPlayerTableDummy
SET Tackles = (
    SELECT SUM(CAST(tackleWon AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Tackles_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Tackles AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

------------------------------------------------------

EXEC sp_rename 'NewPlayerTableDummy.FLOATerceptions', 'Interceptions', 'COLUMN';
EXEC sp_rename 'NewPlayerTableDummy.FLOATerceptions_per_90', 'Interceptions_per_90', 'COLUMN';

---------------------------------------------

UPDATE NewPlayerTableDummy
SET Interceptions = (
    SELECT SUM(CAST(interceptionWon AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Interceptions_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Interceptions AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

UPDATE NewPlayerTableDummy
SET Clearances = (
    SELECT COUNT(type)  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2 AND type = 'Clearance'
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Clearances_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Clearances AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

UPDATE NewPlayerTableDummy
SET Aerial_duels = (
    SELECT SUM(CAST(duelAerialWon AS INT))  
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Aerial_duels_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Aerial_duels AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

ALTER TABLE NewPlayerTableDummy
ADD OffensiveDuels FLOAT;

ALTER TABLE NewPlayerTableDummy
ADD OffensiveDuels_per_90 FLOAT;


UPDATE NewPlayerTableDummy
SET OffensiveDuels = (
    SELECT SUM(CAST(offensiveDuel AS FLOAT))
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2 AND SubTable.outcomeType = 'Successful'
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET OffensiveDuels_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(OffensiveDuels AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

---------------------------------------------

ALTER TABLE NewPlayerTableDummy
ADD DefensiveDuels FLOAT;

ALTER TABLE NewPlayerTableDummy
ADD DefensiveDuels_per_90 FLOAT;

UPDATE NewPlayerTableDummy
SET DefensiveDuels = (
    SELECT SUM(CAST(defensiveDuel AS FLOAT))
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2 AND SubTable.outcomeType = 'Successful'
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET DefensiveDuels_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(DefensiveDuels AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

--------------------------------
ALTER TABLE NewPlayerTableDummy
ADD DefensiveDuels_per_90 FLOAT;

UPDATE NewPlayerTableDummy
SET Duels = (DefensiveDuels + OffensiveDuels)


UPDATE NewPlayerTableDummy
SET Duels_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Duels AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

-------------------------------------------------------

UPDATE NewPlayerTableDummy
SET Shot_assists = (
    SELECT SUM(CAST(passKey AS FLOAT))
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Shot_assists_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Shot_assists AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

-----------------------------------------------------------
UPDATE NewPlayerTableDummy
SET Shot_assists = (
    SELECT SUM(CAST(passKey AS FLOAT))
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
)
WHERE EXISTS (
    SELECT 1 
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
);


UPDATE NewPlayerTableDummy
SET Shot_assists_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Shot_assists AS FLOAT) / CAST([90s] AS FLOAT)
                   END;

select * from dbo.NewPlayerTableDummy

-----------------------------------------------------------
-- Step 1: Add the Assists column to the table
ALTER TABLE NewPlayerTableDummy
ADD Assists FLOAT;


UPDATE NewPlayerTableDummy
SET Assists = (
    SELECT SUM(CAST(assist AS FLOAT))
    FROM NewPlayerTableDummy AS SubTable
    WHERE SubTable.playerId_2 = NewPlayerTableDummy.playerId_2
    GROUP BY SubTable.playerId_2
);



UPDATE NewPlayerTableDummy
SET Assists_per_90 = CASE 
                     WHEN CAST([90s] AS FLOAT) = 0 OR [90s] IS NULL THEN 0
                     ELSE CAST(Assists AS FLOAT) / CAST([90s] AS FLOAT)
                   END;


-----------------------------------------------------------

ALTER TABLE NewPlayerTableDummy
ADD Cleansheets FLOAT, ShotAccuracy FLOAT, GoalConversion FLOAT;

------------------------------------------------------------

UPDATE NewPlayerTableDummy
SET ShotAccuracy = CASE 
                     WHEN Shots = 0 THEN NULL
                     ELSE Shots_on_target / NULLIF(Shots,0)
                   END;

UPDATE NewPlayerTableDummy
SET GoalConversion = CASE 
                     WHEN Goals = 0 THEN NULL
                     ELSE Goals / NULLIF(Shots,0)
                   END;



UPDATE NewPlayerTableDummy
SET Cleansheets = (14)
	WHERE PlayerName = 'Aaron Ramsdale'

UPDATE NewPlayerTableDummy
SET Cleansheets = (0)
	WHERE PlayerName <> 'Aaron Ramsdale'


Select * from NewPlayerTableDummy



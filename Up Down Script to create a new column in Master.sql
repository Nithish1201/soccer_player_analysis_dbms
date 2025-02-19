
USE dbms_proj_demo
GO


-- DROP SCRIPT
DROP TABLE IF EXISTS dbo.Master
-- Down Script to Drop the 'NPG' Column from a Table
IF EXISTS (SELECT * FROM sys.columns 
           WHERE Name = N'NPG' AND Object_ID = Object_ID(N'dbo.Master'))
BEGIN
    ALTER TABLE your_table_name
    DROP COLUMN NPG;
    PRINT 'Dropped column NPG from your_table_name';
END
GO


-- UP SCRIPT TO CREATE COLUMN
select * from dbo.master 
where type = 'Pass' AND outcomeType = 'Successful' 
ORDER BY id;

ALTER TABLE [master]
ADD NPG INT;

UPDATE dbo.master
SET NPG = CASE 
		WHEN isGoal = 1
			AND penaltyScored = 0
			THEN 1
		ELSE 0
		END;
	
SELECT NPG, playerName FROM dbo.master where NPG =1


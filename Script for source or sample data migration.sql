-- create database dbms_proj_demo
--go


use dbms_proj_demo
go


-- down for check constraints
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_h_a') ALTER TABLE master DROP CONSTRAINT ck_master_h_a;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_period') ALTER TABLE master DROP CONSTRAINT ck_master_period;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_outcomeType') ALTER TABLE master DROP CONSTRAINT ck_master_outcomeType;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_isTouch') ALTER TABLE master DROP CONSTRAINT ck_master_isTouch;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_isShot') ALTER TABLE master DROP CONSTRAINT ck_master_isShot;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_isGoal') ALTER TABLE master DROP CONSTRAINT ck_master_isGoal;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_isOwnGoal') ALTER TABLE master DROP CONSTRAINT ck_master_isOwnGoal;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotOpenPlay') ALTER TABLE master DROP CONSTRAINT ck_master_shotOpenPlay;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotCounter') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotCounter;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotSetPiece') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotSetPiece;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotOffTarget') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotOffTarget;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotOnPost') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotOnPost;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotOnTarget') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotOnTarget;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotsTotal') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotsTotal;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotBlocked') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotBlocked;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotRightFoot') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotRightFoot;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotLeftFoot') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotLeftFoot;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotHead') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotHead;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shotObp') ALTER TABLE [master] DROP CONSTRAINT ck_master_shotObp;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalOpenPlay') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalOpenPlay;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalCounter') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalCounter;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalSetPiece') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalSetPiece;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_penaltyScored') ALTER TABLE [master] DROP CONSTRAINT ck_master_penaltyScored;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalOwn') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalOwn;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalNormal') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalNormal;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalRightFoot') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalRightFoot;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalLeftFoot') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalLeftFoot;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_goalHead') ALTER TABLE [master] DROP CONSTRAINT ck_master_goalHead;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shortPassInaccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_shortPassInaccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_shortPassAccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_shortPassAccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassLong') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassLong;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassShort') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassShort;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassCross') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassCross;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassCorner') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassCorner;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassThroughball') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassThroughball;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassFreekick') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassFreekick;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassThrowin') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassThrowin;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keyPassOther') ALTER TABLE [master] DROP CONSTRAINT ck_master_keyPassOther;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_assistCross') ALTER TABLE [master] DROP CONSTRAINT ck_master_assistCross;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_assistCorner') ALTER TABLE [master] DROP CONSTRAINT ck_master_assistCorner;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_assistThroughball') ALTER TABLE [master] DROP CONSTRAINT ck_master_assistThroughball;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_assistFreekick') ALTER TABLE [master] DROP CONSTRAINT ck_master_assistFreekick;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_assistOther') ALTER TABLE [master] DROP CONSTRAINT ck_master_assistOther;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_dribbleLost') ALTER TABLE [master] DROP CONSTRAINT ck_master_dribbleLost;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_dribbleWon') ALTER TABLE [master] DROP CONSTRAINT ck_master_dribbleWon;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_challengeLost') ALTER TABLE [master] DROP CONSTRAINT ck_master_challengeLost;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_interceptionWon') ALTER TABLE [master] DROP CONSTRAINT ck_master_interceptionWon;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_clearanceHead') ALTER TABLE [master] DROP CONSTRAINT ck_master_clearanceHead;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_foulGiven') ALTER TABLE [master] DROP CONSTRAINT ck_master_foulGiven;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_foulCommitted') ALTER TABLE [master] DROP CONSTRAINT ck_master_foulCommitted;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_yellowCard') ALTER TABLE [master] DROP CONSTRAINT ck_master_yellowCard;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_redCard') ALTER TABLE [master] DROP CONSTRAINT ck_master_redCard;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_turnover') ALTER TABLE [master] DROP CONSTRAINT ck_master_turnover;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_dispossessed') ALTER TABLE [master] DROP CONSTRAINT ck_master_dispossessed;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_touches') ALTER TABLE [master] DROP CONSTRAINT ck_master_touches;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_assist') ALTER TABLE [master] DROP CONSTRAINT ck_master_assist;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_ballRecovery') ALTER TABLE [master] DROP CONSTRAINT ck_master_ballRecovery;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_clearanceEffective') ALTER TABLE [master] DROP CONSTRAINT ck_master_clearanceEffective;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_clearanceTotal') ALTER TABLE [master] DROP CONSTRAINT ck_master_clearanceTotal;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_clearanceOffTheLine') ALTER TABLE [master] DROP CONSTRAINT ck_master_clearanceOffTheLine;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_errorLeadsToGoal') ALTER TABLE [master] DROP CONSTRAINT ck_master_errorLeadsToGoal;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_errorLeadsToShot') ALTER TABLE [master] DROP CONSTRAINT ck_master_errorLeadsToShot;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_interceptionAll') ALTER TABLE [master] DROP CONSTRAINT ck_master_interceptionAll;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keeperClaimHighWon') ALTER TABLE [master] DROP CONSTRAINT ck_master_keeperClaimHighWon;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_parriedDanger') ALTER TABLE [master] DROP CONSTRAINT ck_master_parriedDanger;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_parriedSafe') ALTER TABLE [master] DROP CONSTRAINT ck_master_parriedSafe;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_collected') ALTER TABLE [master] DROP CONSTRAINT ck_master_collected;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keeperSaveInTheBox') ALTER TABLE [master] DROP CONSTRAINT ck_master_keeperSaveInTheBox;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keeperSaveTotal') ALTER TABLE [master] DROP CONSTRAINT ck_master_keeperSaveTotal;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keeperSmother') ALTER TABLE [master] DROP CONSTRAINT ck_master_keeperSmother;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keeperSweeperLost') ALTER TABLE [master] DROP CONSTRAINT ck_master_keeperSweeperLost;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_keeperMissed') ALTER TABLE [master] DROP CONSTRAINT ck_master_keeperMissed;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passAccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_passAccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passKey') ALTER TABLE [master] DROP CONSTRAINT ck_master_passKey;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passChipped') ALTER TABLE [master] DROP CONSTRAINT ck_master_passChipped;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passCrossAccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_passCrossAccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passCrossInaccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_passCrossInaccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passLongBallAccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_passLongBallAccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passLongBallInaccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_passLongBallInaccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passThroughBallAccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_passThroughBallAccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_passThroughBallInaccurate') ALTER TABLE [master] DROP CONSTRAINT ck_master_passThroughBallInaccurate;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_penaltyConceded') ALTER TABLE [master] DROP CONSTRAINT ck_master_penaltyConceded;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_penaltyMissed') ALTER TABLE [master] DROP CONSTRAINT ck_master_penaltyMissed;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_penaltyWon') ALTER TABLE [master] DROP CONSTRAINT ck_master_penaltyWon;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_tackleLastMan') ALTER TABLE [master] DROP CONSTRAINT ck_master_tackleLastMan;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_tackleLost') ALTER TABLE [master] DROP CONSTRAINT ck_master_tackleLost;
IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_tackleWon') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_tackleWon;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_duelAerialWon') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_duelAerialWon;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_duelAerialLost') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_duelAerialLost;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_offensiveDuel') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_offensiveDuel;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_defensiveDuel') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_defensiveDuel;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_bigChanceMissed') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_bigChanceMissed;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_bigChanceScored') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_bigChanceScored;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_bigChanceCreated') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_bigChanceCreated;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_overrun') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_overrun;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_successfulFinalThirdPasses') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_successfulFinalThirdPasses;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_punches') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_punches;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_throwIn') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_throwIn;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_subOn') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_subOn;
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS WHERE CONSTRAINT_NAME='ck_master_subOff') 
    ALTER TABLE [master] DROP CONSTRAINT ck_master_subOff;
GO




--down for foreign constraints

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='fk_playername_teamid_team_id')
	alter table PlayerName drop constraint fk_playername_teamid_team_id

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='fk_playername_position_code')
	alter table PlayerName drop constraint fk_playername_position_code

drop table if exists PlayerName

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='fk_master_type_type')
	alter table [master] drop constraint fk_master_type_type

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='fk_master_playerid_id_')
	alter table [master] drop constraint fk_master_playerid_id_

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='fk_master_teamid_teamid')
	alter table [master] drop constraint fk_master_teamid_teamid

--drop primary key

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='pk_playername_id')
	alter table PlayerName drop constraint pk_playername_id

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='pk_Type_Lookup_type_id')
	alter table Type_Lookup drop constraint pk_Type_Lookup_type_id

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='pk_clubid_teamid')
	alter table ClubId drop constraint pk_clubid_teamid

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='pk_position_code')
	alter table Position drop constraint pk_position_code

if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
	where CONSTRAINT_NAME='pk_master_sr_id')
	alter table master drop constraint pk_master_sr_id

--drop table if exists [master]
--drop table if exists [ClubId]
--drop table if exists [Type_Lookup]
--drop table if exists [PlayerName]
drop table if exists [Position]


--up metadata

--Creating Table POSITION
create table [dbo].[Position]
	(Position varchar(50),
	code varchar(50) not null)

alter table [master]
alter column Sr varchar(50) not null

alter table [master]
alter column id varchar(50) not null

alter table [master]
alter column PlayerId1 int not null

alter table [master]
alter column TypeId int not null

--primary keys

--for not null

alter table [master]
	add constraint pk_master_sr_id primary key(sr,id)

alter table [dbo].[Position]
	add constraint pk_position_code primary key(code)

alter table [dbo].[ClubId]
	add constraint pk_clubid_teamid primary key([team_id])

alter table [dbo].[Type_Lookup]
	add constraint pk_Type_Lookup_type_id primary key(id)

alter table [dbo].[PlayerName]
	add constraint pk_playername_id primary key(id)



--foreign key
--master
alter table [master]
	add constraint fk_master_teamid_teamid foreign key (teamid) references [ClubId]([team_id])

alter table [master]
	add constraint fk_master_playerid_id_ foreign key (playerid_) references [PlayerName](id)

alter table [master]
	add constraint fk_master_type_type foreign key (typeid) references [Type_Lookup](id)

--playername
alter table PlayerName
	add constraint fk_playername_position_code foreign key (Position) references Position(Code)

alter table PlayerName
	add constraint fk_playername_teamid_team_id foreign key (teamId) references ClubId([team ID])

--check constraint
alter table [master]
	add constraint ck_master_h_a check (h_a in ('a','h'))
go

alter table [master]
	add constraint ck_master_period 
	check ( period in ('FirstHalf','PostGame','PreMatch','SecondHalf'))
go

alter table [master]
	add constraint ck_master_outcomeType 
	check ( outcomeType in ('Successful','Unsuccessful'))
go

go 
alter table [master] 
	add constraint ck_master_isTouch 
	check (isTouch in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_isShot 
	check (isShot in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_isGoal 
	check (isGoal in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_isOwnGoal 
	check (isOwnGoal in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotOpenPlay 
	check (shotOpenPlay in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotCounter 
	check (shotCounter in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotSetPiece 
	check (shotSetPiece in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotOffTarget 
	check (shotOffTarget in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotOnPost 
	check (shotOnPost in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotOnTarget 
	check (shotOnTarget in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotsTotal 
	check (shotsTotal in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotBlocked 
	check (shotBlocked in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotRightFoot 
	check (shotRightFoot in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotLeftFoot 
	check (shotLeftFoot in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotHead 
	check (shotHead in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shotObp 
	check (shotObp in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalOpenPlay 
	check (goalOpenPlay in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalCounter 
	check (goalCounter in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalSetPiece 
	check (goalSetPiece in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_penaltyScored 
	check (penaltyScored in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalOwn 
	check (goalOwn in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalNormal 
	check (goalNormal in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalRightFoot 
	check (goalRightFoot in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalLeftFoot 
	check (goalLeftFoot in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_goalHead 
	check (goalHead in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shortPassInaccurate 
	check (shortPassInaccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_shortPassAccurate 
	check (shortPassAccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassLong 
	check (keyPassLong in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassShort 
	check (keyPassShort in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassCross 
	check (keyPassCross in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassCorner 
	check (keyPassCorner in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassThroughball 
	check (keyPassThroughball in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassFreekick 
	check (keyPassFreekick in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassThrowin 
	check (keyPassThrowin in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keyPassOther 
	check (keyPassOther in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_assistCross 
	check (assistCross in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_assistCorner 
	check (assistCorner in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_assistThroughball 
	check (assistThroughball in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_assistFreekick 
	check (assistFreekick in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_assistOther 
	check (assistOther in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_dribbleLost 
	check (dribbleLost in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_dribbleWon 
	check (dribbleWon in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_challengeLost 
	check (challengeLost in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_interceptionWon 
	check (interceptionWon in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_clearanceHead 
	check (clearanceHead in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_foulGiven 
	check (foulGiven in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_foulCommitted 
	check (foulCommitted in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_yellowCard 
	check (yellowCard in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_redCard 
	check (redCard in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_turnover 
	check (turnover in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_dispossessed 
	check (dispossessed in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_touches 
	check (touches in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_assist 
	check (assist in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_ballRecovery 
	check (ballRecovery in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_clearanceEffective 
	check (clearanceEffective in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_clearanceTotal 
	check (clearanceTotal in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_clearanceOffTheLine 
	check (clearanceOffTheLine in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_errorLeadsToGoal 
	check (errorLeadsToGoal in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_errorLeadsToShot 
	check (errorLeadsToShot in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_interceptionAll 
	check (interceptionAll in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keeperClaimHighWon 
	check (keeperClaimHighWon in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_parriedDanger 
	check (parriedDanger in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_parriedSafe 
	check (parriedSafe in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_collected 
	check (collected in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keeperSaveInTheBox 
	check (keeperSaveInTheBox in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keeperSaveTotal 
	check (keeperSaveTotal in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keeperSmother 
	check (keeperSmother in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keeperSweeperLost 
	check (keeperSweeperLost in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_keeperMissed 
	check (keeperMissed in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passAccurate 
	check (passAccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passKey 
	check (passKey in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passChipped 
	check (passChipped in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passCrossAccurate 
	check (passCrossAccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passCrossInaccurate 
	check (passCrossInaccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passLongBallAccurate 
	check (passLongBallAccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passLongBallInaccurate 
	check (passLongBallInaccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passThroughBallAccurate 
	check (passThroughBallAccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_passThroughBallInaccurate 
	check (passThroughBallInaccurate in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_penaltyConceded 
	check (penaltyConceded in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_penaltyMissed 
	check (penaltyMissed in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_penaltyWon 
	check (penaltyWon in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_tackleLastMan 
	check (tackleLastMan in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_tackleLost 
	check (tackleLost in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_tackleWon 
	check (tackleWon in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_duelAerialWon 
	check (duelAerialWon in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_duelAerialLost 
	check (duelAerialLost in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_offensiveDuel 
	check (offensiveDuel in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_defensiveDuel 
	check (defensiveDuel in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_bigChanceMissed 
	check (bigChanceMissed in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_bigChanceScored 
	check (bigChanceScored in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_bigChanceCreated 
	check (bigChanceCreated in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_overrun 
	check (overrun in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_successfulFinalThirdPasses 
	check (successfulFinalThirdPasses in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_punches 
	check (punches in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_throwIn 
	check (throwIn in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_subOn 
	check (subOn in ('0', '1'));
go 
	
alter table [master] 
	add constraint ck_master_subOff 
	check (subOff in ('0', '1'));

-- UP DATA
--up data for POSITION TABLE

insert into [dbo].[Position](Position,code)
	values ('ATTACKING MIDFIELDER/WINGER', 'AM'),
		   ('DEFENDER','DEF'),								
		   ('FORWARD','FWD'),	
		   ('GOALKEEPER','GK'),								
		   ('MIDFIELDER','MID')								
												





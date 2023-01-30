PRAGMA foreign_keys = ON;

.mode columns
.headers on

DROP TABLE IF EXISTS GroupTeam;
DROP TABLE IF EXISTS [Group];
DROP TABLE IF EXISTS Elimination;
DROP TABLE IF EXISTS Goal;
DROP TABLE IF EXISTS [Match];
DROP TABLE IF EXISTS Stage;
DROP TABLE IF EXISTS Contract;
DROP TABLE IF EXISTS Team;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS Season;

CREATE TABLE Season(
	idSeason INTEGER PRIMARY KEY,
	startDate DATE UNIQUE NOT NULL,
	endDate DATE UNIQUE NOT NULL,
	CONSTRAINT Season_CHK1_Date CHECK (endDate >= startDate));

CREATE TABLE Player(
	idPlayer INTEGER PRIMARY KEY,
	name TEXT NOT NULL,
	birthdate DATE,
	nationality TEXT NOT NULL);
	
CREATE TABLE Team(
	idTeam INTEGER PRIMARY KEY,
	name TEXT UNIQUE NOT NULL,
	country TEXT NOT NULL);
	
CREATE TABLE Contract(
	idPlayer INTEGER REFERENCES Player(idPlayer),
	idTeam INTEGER REFERENCES Team(idTeam),
	startDate DATE,
	endDate DATE,
	CONSTRAINT Contract_PK PRIMARY KEY (idPlayer, idTeam, startDate),
	CONSTRAINT Contract_CHK1_sDeD CHECK (endDate >= startDate));

CREATE TABLE Stage(
	idStage INTEGER PRIMARY KEY,
	typee TEXT NOT NULL,
	week INTEGER,
	idSeason INTEGER,
	qualifyPrize INTEGER,
	winPrize INTEGER,
	drawPrize INTEGER,
	isRetour BOOLEAN,
	CONSTRAINT Stage_FK1 FOREIGN KEY (idSeason) REFERENCES Season(idSeason));

CREATE TABLE [Match](
	idMatch INTEGER PRIMARY KEY,
	date DATE NOT NULL,
	numberGoalsHome INTEGER NOT NULL,
	numberGoalsAway INTEGER NOT NULL,
	idHome INTEGER NOT NULL,
	idAway INTEGER NOT NULL,
	idWinner INTEGER,
	idStage INTEGER,
	CONSTRAINT Match_Team_FK1 FOREIGN KEY (idHome) REFERENCES Team(idTeam),
	CONSTRAINT Match_Team_FK2 FOREIGN KEY (idAway) REFERENCES Team(idTeam),
	CONSTRAINT Match_Team_FK3 FOREIGN KEY (idWinner) REFERENCES Team(idTeam),
	CONSTRAINT Match_Team_FK4 FOREIGN KEY (idStage) REFERENCES Stage(idStage));
	
CREATE TABLE Goal(
	minuteTime INTEGER,
	idPlayer INTEGER REFERENCES Player(idPlayer),
	idMatch INTEGER REFERENCES [Match](idMatch),
	isAg BOOLEAN,
	CONSTRAINT Goal_PK PRIMARY KEY (minuteTime, idPlayer, idMatch),
	CONSTRAINT Goal_CHK1_m CHECK (minuteTime >= 0 AND minuteTime <= 120));
	
CREATE TABLE Elimination(
	idTeam INTEGER REFERENCES Team(idTeam),
	idSeason INTEGER REFERENCES Season(idSeason),
	idStage INTEGER DEFAULT NULL,
	CONSTRAINT Elimination_PK PRIMARY KEY (idTeam, idSeason),
	CONSTRAINT Elimination_FK FOREIGN KEY (idStage) REFERENCES Stage(idStage));


CREATE TABLE [Group](
	idGroup INTEGER,
	letter CHAR,
	idSeason INTEGER REFERENCES Season(idSeason),
	CONSTRAINT Group_PK PRIMARY KEY (idGroup));

CREATE TABLE GroupTeam (
	idGroup INTEGER REFERENCES [Group] (idGroup) , 
	idTeam INTEGER REFERENCES Team (idTeam),
	CONSTRAINT GroupTeam_PK PRIMARY KEY (idGroup , idTeam));



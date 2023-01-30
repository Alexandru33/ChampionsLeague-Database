.mode columns
.headers on

/* Season ( idSeason ,  start_date, end_date ) */
INSERT INTO Season VALUES (NULL, '2022-09-01' , '2023-06-10');

/* Team (idTeam, name, countr) */
INSERT INTO Team VALUES (NULL, "Napoli" , "Italy");
INSERT INTO Team VALUES (NULL, "Liverpool" , "England");
INSERT INTO Team VALUES (NULL, "Ajax" , "Netherlands");
INSERT INTO Team VALUES (NULL, "Rangers" , "Scotland");

INSERT INTO Team VALUES (NULL, "Porto" , "Portugal");
INSERT INTO Team VALUES (NULL, "Club Brugge" , "Belgium");
INSERT INTO Team VALUES (NULL, "Leverkusen" , "Germany");
INSERT INTO Team VALUES (NULL, "Atletico" , "Spain");

INSERT INTO Team VALUES (NULL, "Bayern" , "Germany");
INSERT INTO Team VALUES (NULL, "Inter" , "Italy");
INSERT INTO Team VALUES (NULL, "Barcelona" , "Spain");
INSERT INTO Team VALUES (NULL, "Plzen" , "Czech Republic");

INSERT INTO Team VALUES (NULL, "Tottenham" , "England");
INSERT INTO Team VALUES (NULL, "Frankfurt" , "Germany");
INSERT INTO Team VALUES (NULL, "Sporting CP" , "Portugal");
INSERT INTO Team VALUES (NULL, "Marseille" , "France");

INSERT INTO Team VALUES (NULL, "Chelsea" , "England");
INSERT INTO Team VALUES (NULL, "Milan" , "Italy");
INSERT INTO Team VALUES (NULL, "Salzburg" , "Austria");
INSERT INTO Team VALUES (NULL, "Dinamo Zagreb" , "Croatia");

INSERT INTO Team VALUES (NULL, "Real Madrid" , "Spain");
INSERT INTO Team VALUES (NULL, "Leipzig" , "Germany");
INSERT INTO Team VALUES (NULL, "Shaktar Donetsk" , "Ukraine");
INSERT INTO Team VALUES (NULL, "Celtic" , "Scotland");

INSERT INTO Team VALUES (NULL, "Man City" , "England");
INSERT INTO Team VALUES (NULL, "Dortmund" , "Germany");
INSERT INTO Team VALUES (NULL, "Sevilla" , "Spain");
INSERT INTO Team VALUES (NULL, "Copenhagen" , "Denmark");

INSERT INTO Team VALUES (NULL, "Benfica" , "Portugal");
INSERT INTO Team VALUES (NULL, "Paris" , "France");
INSERT INTO Team VALUES (NULL, "Juventus" , "Italy");
INSERT INTO Team VALUES (NULL, "M. Haifa" , "Israel");

/*Group ( idGroup , letter , idSeason → Season) */

INSERT INTO [Group] VALUES ( 1 , "A" , 1); 
INSERT INTO [Group] VALUES ( 2 , "B" , 1); 
INSERT INTO [Group] VALUES ( 3 , "C" , 1); 
INSERT INTO [Group] VALUES ( 4 , "D" , 1); 

INSERT INTO [Group] VALUES ( 5 , "E" , 1); 
INSERT INTO [Group] VALUES ( 6 , "F" , 1); 
INSERT INTO [Group] VALUES ( 7 , "G" , 1); 
INSERT INTO [Group] VALUES ( 8 , "H" , 1); 


/* GroupTeam(idGroup → Group , idTeam → Team ) */

INSERT INTO GroupTeam VALUES ( 1, 1 );
INSERT INTO GroupTeam VALUES ( 1, 2 );
INSERT INTO GroupTeam VALUES ( 1, 3 );
INSERT INTO GroupTeam VALUES ( 1, 4 );

INSERT INTO GroupTeam VALUES ( 2, 5 );
INSERT INTO GroupTeam VALUES ( 2, 6 );
INSERT INTO GroupTeam VALUES ( 2, 7 );
INSERT INTO GroupTeam VALUES ( 2, 8 );

INSERT INTO GroupTeam VALUES ( 3, 9 );
INSERT INTO GroupTeam VALUES ( 3, 10 );
INSERT INTO GroupTeam VALUES ( 3, 11 );
INSERT INTO GroupTeam VALUES ( 3, 12 );

INSERT INTO GroupTeam VALUES ( 4, 13 );
INSERT INTO GroupTeam VALUES ( 4, 14 );
INSERT INTO GroupTeam VALUES ( 4, 15 );
INSERT INTO GroupTeam VALUES ( 4, 16 );

INSERT INTO GroupTeam VALUES ( 5, 17 );
INSERT INTO GroupTeam VALUES ( 5, 18 );
INSERT INTO GroupTeam VALUES ( 5, 19 );
INSERT INTO GroupTeam VALUES ( 5, 20 );

INSERT INTO GroupTeam VALUES ( 6, 21 );
INSERT INTO GroupTeam VALUES ( 6, 22 );
INSERT INTO GroupTeam VALUES ( 6, 23 );
INSERT INTO GroupTeam VALUES ( 6, 24);

INSERT INTO GroupTeam VALUES ( 7, 25 );
INSERT INTO GroupTeam VALUES ( 7, 26 );
INSERT INTO GroupTeam VALUES ( 7, 27 );
INSERT INTO GroupTeam VALUES ( 7, 28 );

INSERT INTO GroupTeam VALUES ( 8, 29 );
INSERT INTO GroupTeam VALUES ( 8, 30 );
INSERT INTO GroupTeam VALUES ( 8, 31 );
INSERT INTO GroupTeam VALUES ( 8, 32 );


/* Player ( idPlayer , name, birthdate, nationality) */

/* It is impossible to introduce the whole squad for every team, so we will
populate our database with only 2 players per team. The first player will also be
the only goalscorer for his team */

/* The players are in the same order as their teams, so the first 2 players are from Napoli,
the next 2 are from Liverpool and so on. (The team with id "i" has the players "2*i-1" and "2*i")
It is easier to create Contracts this way. */



INSERT INTO Player VALUES (NULL , "Giovanni Di Lorenzo", '1993-08-04', "Italy");
INSERT INTO Player VALUES (NULL , "Gianluca Gaetano", '2000-05-05', "Italy");

INSERT INTO Player VALUES (NULL , "Mohammed Salah", '1993-08-26', "Egypt");
INSERT INTO Player VALUES (NULL , "Diogo Jota", '1991-08-04', "Portugal");

INSERT INTO Player VALUES (NULL , "Brobbey Brian", '1993-08-04', "Netherlands");
INSERT INTO Player VALUES (NULL , "Lucca Lorenzo", '1993-08-04', "Italy");

INSERT INTO Player VALUES (NULL , "Ianis Hagi", '2003-08-04', "Romania");
INSERT INTO Player VALUES (NULL , "Kent Ryan", '1993-06-04', "England");



INSERT INTO Player VALUES (NULL , "Pepe", '1993-08-04', "Portugal");
INSERT INTO Player VALUES (NULL , "Evanilson", '1993-08-04', "Brazil");

INSERT INTO Player VALUES (NULL , "Larin Cyle", '1993-08-04', "Canada");
INSERT INTO Player VALUES (NULL , "Vermant Romeo", '1993-08-04', "Belgium");

INSERT INTO Player VALUES (NULL , "Diaby Moussa", '1993-08-04', "France");
INSERT INTO Player VALUES (NULL , "Hlozek Adam", '1993-08-04', "Czech Repuclic");

INSERT INTO Player VALUES (NULL , "Joao Felix", '1993-08-04', "Portugal");
INSERT INTO Player VALUES (NULL , "Morata Alvaro", '1993-08-04', "Spain");



INSERT INTO Player VALUES (NULL , "Sadio Mane", '1993-08-04', "Senegal");
INSERT INTO Player VALUES (NULL , "Manuel Neuer", '1993-08-04', "Germany");

INSERT INTO Player VALUES (NULL , "Edin Dzeko", '1998-07-16', "Bosnia");
INSERT INTO Player VALUES (NULL , "Lautaro Martinez", '1993-08-04', "Argentina");

INSERT INTO Player VALUES (NULL , "Ansu Fati", '1993-08-04', "Spain");
INSERT INTO Player VALUES (NULL , "Raphinha", '1993-08-04', "Brazil");

INSERT INTO Player VALUES (NULL , "Dedic Rene", '1993-08-04', "Slovenia");
INSERT INTO Player VALUES (NULL , "Dabani Alao", '1993-08-04', "Nigeria");



INSERT INTO Player VALUES (NULL , "Kane Harry", '1993-08-04', "England");
INSERT INTO Player VALUES (NULL , "Heung-Min Son", '1993-08-04', "South Korea");

INSERT INTO Player VALUES (NULL , "Alario Lucas", '1993-08-04', "Argentina");
INSERT INTO Player VALUES (NULL , "Nacho", '1993-08-04', "Spain");

INSERT INTO Player VALUES (NULL , "Paulinho", '1993-08-04', "Portugal");
INSERT INTO Player VALUES (NULL , "Trincao", '1993-08-04', "Portugal");

INSERT INTO Player VALUES (NULL , "Sanchez Alexis", '1993-08-04', "Chile");
INSERT INTO Player VALUES (NULL , "Suarez Luis", '1993-08-04', "Colombia");



INSERT INTO Player VALUES (NULL , "Sterling Raheem", '1993-08-04', "England");
INSERT INTO Player VALUES (NULL , "Broja Armando", '1993-08-04', "Armenia");

INSERT INTO Player VALUES (NULL , "Ibrahimovic Zlatan", '1993-08-04', "Sweden");
INSERT INTO Player VALUES (NULL , "Leao Raphael", '1993-08-04', "Portugal");

INSERT INTO Player VALUES (NULL , "Simic Roko", '1993-08-04', "Croatia");
INSERT INTO Player VALUES (NULL , "Sesko Benjamin", '1993-08-04', "Slovenia");

INSERT INTO Player VALUES (NULL , "Sakota Matej", '1993-08-04', "Bosnia");
INSERT INTO Player VALUES (NULL , "Mahir Emreli", '1993-08-04', "Azerbaijan");



INSERT INTO Player VALUES (NULL , "Benzema Karim", '1989-09-14', "France");
INSERT INTO Player VALUES (NULL , "Vinicius Junior", '1993-08-04', "Brazil");

INSERT INTO Player VALUES (NULL , "Werner Timo", '2001-08-03', "Germany");
INSERT INTO Player VALUES (NULL , "Andre Silva", '1993-08-04', "Portugal");

INSERT INTO Player VALUES (NULL , "Sikan Danylo", '1993-08-04', "Ukraine");
INSERT INTO Player VALUES (NULL , "Topalov Dmytrio", '1993-08-04', "Ukraine");

INSERT INTO Player VALUES (NULL , "Jota", '1993-08-04', "Portugal");
INSERT INTO Player VALUES (NULL , "Abada Liel", '1993-08-04', "Israel");



INSERT INTO Player VALUES (NULL , "Erling Haaland", '1993-08-04', "Norway");
INSERT INTO Player VALUES (NULL , "Mahrez Riyad", '1993-08-04', "Algeria");

INSERT INTO Player VALUES (NULL , "Wolf Marius", '1983-08-04', "Germany");
INSERT INTO Player VALUES (NULL , "Brandt Julian", '1993-08-04', "Germany");

INSERT INTO Player VALUES (NULL , "Mir Rafa", '1993-08-04', "Spain");
INSERT INTO Player VALUES (NULL , "Alvarez Carlos", '1993-08-04', "Spain");

INSERT INTO Player VALUES (NULL , "Sahsah Noah", '1993-08-04', "Denmark");
INSERT INTO Player VALUES (NULL , "Hojlund Emil", '1993-08-04', "Denmark");




INSERT INTO Player VALUES (NULL , "Musa Petar", '1993-08-04', "Croatia");
INSERT INTO Player VALUES (NULL , "Neres David", '1993-08-04', "Brazil");

INSERT INTO Player VALUES (NULL , "Mbappe Kylian", '1993-08-04', "France");
INSERT INTO Player VALUES (NULL , "Messi Lionel", '2001-10-18', "Argentina");

INSERT INTO Player VALUES (NULL , "Di Maria Angel", '1993-08-04', "Argentina");
INSERT INTO Player VALUES (NULL , "Kean Moise", '1993-08-04', "Italy");

INSERT INTO Player VALUES (NULL , "David Dean", '1998-08-04', "Israel");
INSERT INTO Player VALUES (NULL , "Haziza Dolev", '1996-01-04', "Israel");


/* Contract (idPlayer → Player, idTeam → Team, start_date, end_date) */

INSERT INTO Contract VALUES( 1 , 1 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 2 , 1 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 3 , 2 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 4 , 2 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 5 , 3 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 6 , 3 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 7 , 4 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 8 , 4 ,'2020-09-01' , '2025-06-25');

INSERT INTO Contract VALUES( 9 , 5 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 10 , 5 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 11 , 6 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 12 , 6 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 13 , 7 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 14 , 7 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 15 , 8 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 16 , 8 ,'2020-09-01' , '2025-06-25');

INSERT INTO Contract VALUES( 17 , 9 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 18 , 9 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 19 , 10 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 20 , 10 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 21 , 11 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 22 , 11 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 23 , 12 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 24 , 12 ,'2020-09-01' , '2025-06-25');

INSERT INTO Contract VALUES( 25 , 13 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 26 , 13 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 27 , 14 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 28, 14 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 29 , 15 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 30 , 15 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 31 , 16 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 32 , 16 ,'2020-09-01' , '2025-06-25');

INSERT INTO Contract VALUES( 33 , 17 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 34 , 17 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 35 , 18 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 36 , 18 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 37 , 19 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 38 , 19 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 39 , 20 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 40 , 20 ,'2020-09-01' , '2025-06-25');

INSERT INTO Contract VALUES( 41 , 21 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 42 , 21 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 43 , 22 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 44 , 22 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 45 , 23,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 46 , 23 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 47 , 24 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 48 , 24 ,'2020-09-01' , '2025-06-25');

INSERT INTO Contract VALUES( 49 , 25 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 50 , 25 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 51 , 26 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 52 , 26 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 53 , 27 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 54 , 27 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 55 , 28 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 56 , 28 ,'2020-09-01' , '2025-06-25');

INSERT INTO Contract VALUES( 57 , 29 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 58 , 29 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 59 , 30 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 60 , 30 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 61 , 31 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 62 , 31 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 63 , 32 ,'2020-09-01' , '2025-06-25');
INSERT INTO Contract VALUES( 64 , 32 ,'2020-09-01' , '2025-06-25');

/* Stage ( idStage, type,  week, idSeason → Season , qualify_prize, win_prize, draw_prize, is_retour) */

INSERT INTO Stage VALUES ( 0 , "NotQualified" , NULL , 1 , 0 , 0 , 0 , NULL);

INSERT INTO Stage VALUES ( 1 , "GroupStage" , 1 , 1 , 0 , 2800000  , 930000, NULL);
INSERT INTO Stage VALUES ( 2 , "GroupStage" , 2 , 1 , 0 , 2800000  , 930000, NULL);
INSERT INTO Stage VALUES ( 3 , "GroupStage" , 3 , 1 , 0 , 2800000  , 930000, NULL);
INSERT INTO Stage VALUES ( 4 , "GroupStage" , 4 , 1 , 0 , 2800000  , 930000, NULL);
INSERT INTO Stage VALUES ( 5 , "GroupStage" , 5 , 1 , 0 , 2800000  , 930000, NULL);
INSERT INTO Stage VALUES ( 6, "GroupStage" , 6 , 1 , 9600000 ,  2800000  , 930000, NULL);

INSERT INTO Stage VALUES ( 7 , "EighthFinalsStage" , NULL , 1 , 0 , 0 , 0 , 0);
INSERT INTO Stage VALUES ( 8 , "EighthFinalsStage" , NULL , 1 , 10600000 , 0 , 0 , 1);

INSERT INTO Stage VALUES ( 9 , "QuarterFinalsStage" , NULL , 1 , 0 , 0 , 0 , 0);
INSERT INTO Stage VALUES ( 10 , "QuarterFinalsStage" , NULL , 1 , 12500000 , 0 , 0 , 1);

INSERT INTO Stage VALUES ( 11 , "SemiFinals" , NULL , 1 , 0 , 0 , 0 , 0);
INSERT INTO Stage VALUES ( 12 , "SemiFinals" , NULL , 1 , 15500000 , 0 , 0 , 1);

INSERT INTO Stage VALUES ( 13 , "Final" , NULL , 1 , 4500000 , 0 , 0 , NULL);

INSERT INTO Stage VALUES ( 14 , "Winner" , NULL , 1 , 0 , 0 , 0 , NULL);


/* Elimination ( idTeam → Team, idSeason → Season,  idStage → Stage) */
/* As the database only manages the first 3 matchweeks of the current season,
no team has already been eliminated. All the idStage field will be NULL */

INSERT INTO Elimination VALUES ( 1, 1 , NULL);
INSERT INTO Elimination VALUES ( 2, 1 , NULL);
INSERT INTO Elimination VALUES ( 3, 1 , NULL);
INSERT INTO Elimination VALUES ( 4, 1 , NULL);
INSERT INTO Elimination VALUES ( 5, 1 , NULL);
INSERT INTO Elimination VALUES ( 6, 1 , NULL);
INSERT INTO Elimination VALUES ( 7, 1 , NULL);
INSERT INTO Elimination VALUES ( 8, 1 , NULL);
INSERT INTO Elimination VALUES ( 9, 1 , NULL);
INSERT INTO Elimination VALUES ( 10, 1 , NULL);
INSERT INTO Elimination VALUES ( 11, 1 , NULL);
INSERT INTO Elimination VALUES ( 12, 1 , NULL);
INSERT INTO Elimination VALUES ( 13, 1 , NULL);
INSERT INTO Elimination VALUES ( 14, 1 , NULL);
INSERT INTO Elimination VALUES ( 15, 1 , NULL);
INSERT INTO Elimination VALUES ( 16, 1 , NULL);

INSERT INTO Elimination VALUES ( 17, 1 , NULL);
INSERT INTO Elimination VALUES ( 18, 1 , NULL);
INSERT INTO Elimination VALUES ( 19, 1 , NULL);
INSERT INTO Elimination VALUES ( 20, 1 , NULL);
INSERT INTO Elimination VALUES ( 21, 1 , NULL);
INSERT INTO Elimination VALUES ( 22, 1 , NULL);
INSERT INTO Elimination VALUES ( 23, 1 , NULL);
INSERT INTO Elimination VALUES ( 24, 1 , NULL);
INSERT INTO Elimination VALUES ( 25, 1 , NULL);
INSERT INTO Elimination VALUES ( 26, 1 , NULL);
INSERT INTO Elimination VALUES ( 27, 1 , NULL);
INSERT INTO Elimination VALUES ( 28, 1 , NULL);
INSERT INTO Elimination VALUES ( 29, 1 , NULL);
INSERT INTO Elimination VALUES ( 30, 1 , NULL);
INSERT INTO Elimination VALUES ( 31, 1 , NULL);
INSERT INTO Elimination VALUES ( 32, 1 , NULL);


/* Match ( idMatch, number_home_goals, number_away_goals, { idHome, idAway, idWinner} → Team, idStage → Stage) */


/* Week 1 - GroupStage */
INSERT INTO [Match] VALUES (NULL, '2022-09-07', 4 , 1 , 1 , 2 , 1 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07', 4 , 0 , 3 , 4 , 3 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',1 , 0 , 6 , 7 , 6 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',2 , 1 , 8 , 5 , 8 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',0 , 2 , 10 , 9 , 9 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',5 , 1 , 11 , 12 , 11 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',2 , 0 , 13 , 16 , 13 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',0 , 3 , 14 , 15 , 15 , 1);

INSERT INTO [Match] VALUES (NULL, '2022-09-07',1 , 1 , 19 , 18 , NULL , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',0 , 3 , 24 , 21 , 21 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',1 , 4 , 22 , 23 , 23 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',0 , 4 , 27 , 25 , 25 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',2 , 1 , 30 , 31 , 30 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',2 , 0 , 29 , 32 , 29 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',3 , 0 , 26 , 28 , 26 , 1);
INSERT INTO [Match] VALUES (NULL, '2022-09-07',1 , 0 , 20 , 17 , 20 , 1);

/* Week 2 - GroupStage*/

INSERT INTO [Match] VALUES (NULL,  '2022-09-13',0 , 3 , 4 , 1 , 1 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',2 , 0 , 21 , 22 , 21 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',2 , 1 , 25 , 26 , 25 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',0 , 0 , 28 , 27 , NULL , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',1 , 3 , 32 , 30 , 30 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',1 , 1 , 17 , 19 , NULL , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',1 , 2 , 31 , 29 , 29 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',3 , 1 , 18 , 20 , 18 , 2);

INSERT INTO [Match] VALUES (NULL,  '2022-09-13',1 , 1 , 23 , 24 , NULL , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',2 , 1 , 2 , 3 , 2 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',2 , 0 , 7 , 8 , 7 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',2 , 0 , 9 , 11 , 9 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',0 , 1 , 16 , 14 , 14 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',0 , 4 , 5 , 6 , 6 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',0 , 2 , 12 , 10 , 10 , 2);
INSERT INTO [Match] VALUES (NULL,  '2022-09-13',2 , 0 , 15 , 13 , 15 , 2);

/* Week 3 -GroupStage */
INSERT INTO [Match] VALUES (NULL, '2022-10-04', 2 , 1 , 21 , 23 , 21 , 3);
INSERT INTO [Match] VALUES (NULL, '2022-10-04', 5 , 0 , 25 , 28 , 25 , 3);
INSERT INTO [Match] VALUES (NULL, '2022-10-04',1 , 4 , 27 , 26 , 26 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',3 , 1 , 31 , 32 , 31 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',3 , 0 , 17 , 18 , 17 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',1 , 1 , 29 , 30 , NULL , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',1 , 0 , 19 , 20 , 19 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',3 , 1 , 22 , 24 , 22 , 3);

INSERT INTO [Match] VALUES (NULL,  '2022-10-04',1 , 6 , 3 , 1 , 1 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',2 , 0 , 2 , 4 , 2 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',2 , 0 , 6 , 8 , 6 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',1 , 0 , 10 , 11 , 10 , 3);

INSERT INTO [Match] VALUES (NULL,  '2022-10-04',0 , 0 , 14 , 13 , NULL , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',2 , 0 , 5 , 7 , 5 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',5 , 0 , 9 , 12 , 9 , 3);
INSERT INTO [Match] VALUES (NULL,  '2022-10-04',4 , 1 , 16 , 15 , 16 , 3);


/* Goal ( minute, idPlayer → Player, idMatch → Match, is_autogol) */

/* We will populate our database with the all the goals of the first
48 games, the ones that happened in the first 3 Match Weeks */


/* Week1 */
/* Napoli - Liverpool 4:1 */

INSERT INTO Goal VALUES (5 , 1 , 1 , 0 );
INSERT INTO Goal VALUES (31 , 1 , 1 , 0 );
INSERT INTO Goal VALUES (44 , 1 , 1 , 0 );
INSERT INTO Goal VALUES (47 , 1 , 1 , 0 );

INSERT INTO Goal VALUES (49 , 3 , 1 , 0 );


/* Ajax -  Rangers 4:0 */
INSERT INTO Goal VALUES (17 , 5 , 2 , 0 );
INSERT INTO Goal VALUES (32 , 5 , 2 , 0 );
INSERT INTO Goal VALUES (33 , 5 , 2 , 0 );
INSERT INTO Goal VALUES (80 , 5 , 2 , 0 );

/* Brugge - Leverkuse 1:0 */
INSERT INTO Goal VALUES (42 , 11 , 3 , 0 );

/* Atletico - Porto 2:1 */
INSERT INTO Goal VALUES (91 , 15 , 4 , 0 );
INSERT INTO Goal VALUES (96 , 15 , 4 , 0 );

INSERT INTO Goal VALUES (101 , 9 , 4 , 0 );

/* Inter - Bayern 0:2 */
INSERT INTO Goal VALUES (25 , 17 , 5 , 0 );
INSERT INTO Goal VALUES (66 , 19 , 5 , 1 );

/* Barcelona  - Plzen 5:1 */
INSERT INTO Goal VALUES (13 , 21 , 6 , 0 );
INSERT INTO Goal VALUES (34 , 21 , 6 , 0 );
INSERT INTO Goal VALUES (45 , 21 , 6 , 0 );
INSERT INTO Goal VALUES (67 , 21 , 6 , 0 );
INSERT INTO Goal VALUES (71 , 21 , 6 , 0 );

INSERT INTO Goal VALUES (44 , 23 , 6 , 0 );

/* Tottenham - Marseille 2:0 */
INSERT INTO Goal VALUES (76 , 25 , 7 , 0 );
INSERT INTO Goal VALUES (81 , 25 , 7 , 0 );

/* Frankfurt - Sporting CP 0:3 */
INSERT INTO Goal VALUES (65 , 29 , 8 , 0 );
INSERT INTO Goal VALUES (67 , 29 , 8 , 0 );
INSERT INTO Goal VALUES (82 , 29 , 8 , 0 );

/* Salzburg - Milan 1:1 */
INSERT INTO Goal VALUES (28 , 37 , 9 , 0 );

INSERT INTO Goal VALUES (40 , 35 , 9 , 0 );

/* Celtic - Real Madrid 0:3 */
INSERT INTO Goal VALUES (56 , 41 , 10 , 0 );
INSERT INTO Goal VALUES (60 , 41 , 10 , 0 );
INSERT INTO Goal VALUES (77 , 41 , 10 , 0 );


/* Leipzig - Shaktar Donetk 1:4 */
INSERT INTO Goal VALUES (57 , 43 , 11 , 0 );

INSERT INTO Goal VALUES (16 , 45 , 11 , 0 );
INSERT INTO Goal VALUES (58 , 45 , 11 , 0 );
INSERT INTO Goal VALUES (76 , 45 , 11 , 0 );
INSERT INTO Goal VALUES (85 , 45 , 11 , 0 );

/* Sevilla - Man City 0:4 */
INSERT INTO Goal VALUES (20 , 49 , 12 , 0 );
INSERT INTO Goal VALUES (58 , 49 , 12 , 0 );
INSERT INTO Goal VALUES (67 , 49 , 12 , 0 );
INSERT INTO Goal VALUES (90 , 49 , 12 , 0 );

/* Paris - Juventus 2:1 */
INSERT INTO Goal VALUES (5 , 59 , 13 , 0 );
INSERT INTO Goal VALUES (22 , 59 , 13 , 0 );

INSERT INTO Goal VALUES (53 , 61 , 13 , 0 );

/* Benfica - M. Haifa 2:0 */
INSERT INTO Goal VALUES (50 , 57 , 14 , 0 );
INSERT INTO Goal VALUES (54 , 57 , 14 , 0 );

/* Dortmund - Copenhagen 3:0 */
INSERT INTO Goal VALUES (35 , 51 , 15 , 0 );
INSERT INTO Goal VALUES (42 , 51 , 15 , 0 );
INSERT INTO Goal VALUES (83 , 51 , 15 , 0 );


/* Dinamo Zagreb - Chelsea 1:0 */
INSERT INTO Goal VALUES (13 , 39 , 16 , 0 );

/* Week2 */
/* Rangers - Napoli 0:3 */
INSERT INTO Goal VALUES (68 , 1 , 17 , 0 );
INSERT INTO Goal VALUES (85 , 1 , 17 , 0 );
INSERT INTO Goal VALUES (91 , 1 , 17 , 0 );

/* Real Madrid - Leipzig 2:0 */
INSERT INTO Goal VALUES (80 , 41 , 18 , 0 );
INSERT INTO Goal VALUES (91 , 41 , 18 , 0 );

/* Man City - Dortmund 2:1 */
INSERT INTO Goal VALUES (80 , 49 , 19 , 0 );
INSERT INTO Goal VALUES (84 , 49 , 19 , 0 );

INSERT INTO Goal VALUES (56 , 51 , 19 , 0 );

/* Copenhagen - Sevilla 0:0 */

/* M. Haifa - Paris 1:3 */
INSERT INTO Goal VALUES (24 , 63 , 21 , 0 );

INSERT INTO Goal VALUES (37 , 59 , 21 , 0 );
INSERT INTO Goal VALUES (69 , 59 , 21 , 0 );
INSERT INTO Goal VALUES (83 , 59 , 21 , 0 );

/* Chelsea - Salzburg 1:1 */
INSERT INTO Goal VALUES (48 , 33 , 22 , 0 );

INSERT INTO Goal VALUES (75 , 37 , 22 , 0 );

/* Juventus  - Benfica 1:2 */
INSERT INTO Goal VALUES (4 , 61 , 23 , 0 );

INSERT INTO Goal VALUES (43 , 57 , 23 , 0 );
INSERT INTO Goal VALUES (55 , 57 , 23 , 0 );

/* Milan - Dinamo Zagreb 3:1 */
INSERT INTO Goal VALUES (45 , 35 , 24 , 0 );
INSERT INTO Goal VALUES (47 , 35 , 24 , 0 );
INSERT INTO Goal VALUES (77 , 35 , 24 , 0 );

INSERT INTO Goal VALUES (56 , 39 , 24 , 0 );

/* Shaktar Donetk - Celtic 1:1 */
INSERT INTO Goal VALUES (10 , 45 , 25 , 1 );
INSERT INTO Goal VALUES (29 , 45 , 25 , 0 );

/* Liverpool - Ajax 2:1 */
INSERT INTO Goal VALUES (17 , 3 , 26 , 0 );
INSERT INTO Goal VALUES (89 , 3 , 26 , 0 );

INSERT INTO Goal VALUES (27 , 5 , 26 , 0 );

/* Leverkusen - Atletico 2:0 */
INSERT INTO Goal VALUES (84 , 13 , 27 , 0 );
INSERT INTO Goal VALUES (87 , 13 , 27 , 0 );

/* Bayern - Barcelona 2:0 */
INSERT INTO Goal VALUES (50 , 17 , 28 , 0 );
INSERT INTO Goal VALUES (54 , 17 , 28 , 0 );


/* Marseille - Frankfurt 0:1 */
INSERT INTO Goal VALUES (43 , 27 , 29 , 0 );

/* Porto - Club Brugge 0:4 */
INSERT INTO Goal VALUES (15 , 11 , 30 , 0 );
INSERT INTO Goal VALUES (47 , 11 , 30 , 0 );
INSERT INTO Goal VALUES (52 , 11 , 30 , 0 );
INSERT INTO Goal VALUES (89 , 11 , 30 , 0 );

/* Plzen - Inter 0:2 */
INSERT INTO Goal VALUES (20 , 19 , 31 , 0 );
INSERT INTO Goal VALUES (70 , 19 , 31 , 0 );

/* Sporting - Tottenham  2:0 */
INSERT INTO Goal VALUES (90 , 29 , 32 , 0 );
INSERT INTO Goal VALUES (93 , 29 , 32 , 0 );


/* Week3 */
/* Real Madrid - Shaktar Donetk 2:1 */
INSERT INTO Goal VALUES (13 , 41 , 33 , 0 );
INSERT INTO Goal VALUES (28 , 41 , 33 , 0 );

INSERT INTO Goal VALUES (39 , 45 , 33 , 0 );

/* Man City - Copenhagen 5:0 */
INSERT INTO Goal VALUES (7 , 49 , 34 , 0 );
INSERT INTO Goal VALUES (32 , 49 , 34 , 0 );
INSERT INTO Goal VALUES (55 , 49 , 34 , 0 );
INSERT INTO Goal VALUES (76 , 49 , 34 , 0 );

INSERT INTO Goal VALUES (39 , 55 , 34 , 0 );

/* Sevilla - Dortmund 1:4 */
INSERT INTO Goal VALUES (51 , 53 , 35 , 0 );

INSERT INTO Goal VALUES (6 , 51 , 35 , 0 );
INSERT INTO Goal VALUES (41 , 51 , 35 , 0 );
INSERT INTO Goal VALUES (43 , 51 , 35 , 0 );
INSERT INTO Goal VALUES (75 , 51 , 35 , 0 );

/* Juventus - M. Haifa 3:1 */
INSERT INTO Goal VALUES (35 , 61 , 36 , 0 );
INSERT INTO Goal VALUES (50 , 61 , 36 , 0 );
INSERT INTO Goal VALUES (83 , 61 , 36 , 0 );

INSERT INTO Goal VALUES (75 , 63 , 36 , 0 );

/* Chelsea - Milan 3:0 */
INSERT INTO Goal VALUES (24 , 33 , 37 , 0 );
INSERT INTO Goal VALUES (56 , 33 , 37 , 0 );
INSERT INTO Goal VALUES (61 , 33 , 37 , 0 );

/* Benfica - Paris 1:1 */
INSERT INTO Goal VALUES (22 , 59 , 38 , 0 );
INSERT INTO Goal VALUES (41 , 59 , 38 , 1 );

/* Salzburg - Dinamo Zagreb 1:0 */
INSERT INTO Goal VALUES (71 , 37 , 39 , 0 );

/* Leipzig - Celtic 3:1 */
INSERT INTO Goal VALUES (24 , 43 , 40 , 0 );
INSERT INTO Goal VALUES (64 , 43 , 40 , 0 );
INSERT INTO Goal VALUES (77 , 43 , 40 , 0 );

INSERT INTO Goal VALUES (47 , 47 , 40 , 0 );

/* Ajax - Napoli 1:6 */
INSERT INTO Goal VALUES (9 , 5 , 41 , 0 );

INSERT INTO Goal VALUES (18 , 1 , 41 , 0 );
INSERT INTO Goal VALUES (33 , 1 , 41 , 0 );
INSERT INTO Goal VALUES (45 , 1 , 41 , 0 );
INSERT INTO Goal VALUES (47 , 1 , 41 , 0 );
INSERT INTO Goal VALUES (64 , 1 , 41 , 0 );
INSERT INTO Goal VALUES (81 , 1 , 41 , 0 );


/* Liverpool - Rangers 2:0 */
INSERT INTO Goal VALUES (7 , 3 , 42 , 0 );
INSERT INTO Goal VALUES (53 , 3 , 42 , 0 );

/* Club Brugge - Atletico 2:0 */
INSERT INTO Goal VALUES (36 , 11 , 43 , 0 );
INSERT INTO Goal VALUES (62 , 11 , 43 , 0 );

/* Inter  - Barcelona 1:0 */
INSERT INTO Goal VALUES (45 , 19 , 44 , 0 );

/* Frankfurt - Tottenham 0:0 */

/* Porto - Leverkusen 2:0 */
INSERT INTO Goal VALUES (69 , 9 , 46 , 0 );
INSERT INTO Goal VALUES (86 , 9 , 46 , 0 );

/* Bayern - Plzen 5:0 */
INSERT INTO Goal VALUES (7 , 17 , 47 , 0 );
INSERT INTO Goal VALUES (13 , 17 , 47 , 0 );
INSERT INTO Goal VALUES (21 , 17 , 47 , 0 );
INSERT INTO Goal VALUES (50 , 17 , 47 , 0 );
INSERT INTO Goal VALUES (59 , 17 , 47 , 0 );

/* Marseille - SPorting CP 4:1 */
INSERT INTO Goal VALUES (13 , 31 , 48 , 0 );
INSERT INTO Goal VALUES (16 , 31 , 48 , 0 );
INSERT INTO Goal VALUES (28 , 31 , 48 , 0 );
INSERT INTO Goal VALUES (84 , 31 , 48 , 0 );

INSERT INTO Goal VALUES (1 , 39 , 48 , 0 );



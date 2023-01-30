/*
MEDIUM 
List all the teams that have the average age of their squad smaller than 26 years.
List team name as "team", team country as "country" and average age of the squad as "avg age".
Order by average age.
*/

.mode columns
.headers on 
.nullvalue NULL

SELECT Team.name as "team" , avg(DATE('now') - Player.birthdate) AS "avg age"
FROM 
    Player
    INNER JOIN Contract ON Player.idPlayer = Contract.idPlayer
    INNER JOIN Team ON Team.idTeam = Contract.idTeam
GROUP BY Team.idTeam , Team.name
HAVING "avg age" < 26
ORDER BY "avg age";

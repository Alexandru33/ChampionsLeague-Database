/*
We want to know how many goals score Giovanni Di Lorenzo in each game he played so far in this season of Champions League.
List date of the match, home team name, home team number of goals,
away team number of goals, away team name and the column "goals_scored_by_giovanni".ABORT
Order by match date.
*/

.mode columns
.headers on 
.nullvalue NULL

SELECT
    M.date,
   (SELECT Team.name FROM Team WHERE Team.idTeam = M.idHome) as "home_team",
    M.numberGoalsHome,
    M.numberGoalsAway,
    (SELECT Team.name FROM Team WHERE Team.idTeam = M.idAway) as "away_team",
   (
        SELECT count(*) 
        FROM Goal G , Player P
        WHERE 
            P.name = "Giovanni Di Lorenzo" AND
            G.idPlayer =  P.idPlayer AND
            G.idMatch = M.idMatch 
    ) as "goals_scored_by_giovanni"
FROM
    [Match] M, Player P, Contract C, Team T
WHERE
    P.name = "Giovanni Di Lorenzo" AND
    P.idPlayer = C.idPlayer AND
    C.idTeam = T.idTeam AND
    (
        T.idTeam = M.idHome OR
        T.idTeam = M.idAway
    )
ORDER BY date;


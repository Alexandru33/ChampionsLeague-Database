/*
MEDIUM
Who is the top scorer so far of Champion's League edition 2022/2023 ?
List his name, his nationality, the name of the team that he plays in as "team", and the number of goals scored as "scored goals".
*/


.mode columns
.headers on 
.nullvalue NULL

SELECT Player.name, Player.nationality , count(*) AS "scored goals", Team.name AS "team"
FROM Player, Contract, Team , Goal, [Match], Stage, Season
WHERE 
    Team.idTeam = Contract.idTeam AND
    Contract.idPlayer = Player.idPlayer AND
    Player.idPlayer = Goal.idPlayer AND
    Goal.idMatch = [Match].idMatch AND
    [Match].idStage = Stage.idStage AND
    Stage.idSeason = Season.idSeason AND
    Season.startDate LIKE "2022%"
GROUP BY Player.idPlayer, Player.name
ORDER BY count(*) DESC
LIMIT 1;
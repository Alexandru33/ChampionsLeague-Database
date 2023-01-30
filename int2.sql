/*
EASY
List all the Portuguese teams that are involved in the 2022-2023 Champion's League tournament.
Order them by name.
*/

.mode columns
.headers on 
.nullvalue NULL


SELECT Team.name , Team.country
FROM Team , [Group] G, GroupTeam GT, Season S
WHERE 
    Team.country = "Portugal" AND
    Team.idTeam = GT.idTeam AND
    GT.idGroup = G.idGroup AND
    G.idSeason = S.idSeason AND
    S.startDate LIKE "2022%"
ORDER BY Team.name ;

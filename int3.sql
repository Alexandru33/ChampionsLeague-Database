/*
EASY
List all the countries that have teams involved in the group stage of Champion's League 2022-2023 edition, and their number of teams.
Order them by the number of teams they have, in descending order and, then, alphabetically by name.
*/


.mode columns
.headers on 
.nullvalue NULL


SELECT Team.country, count(*) as "number of teams"
FROM Team , [Group] G, GroupTeam GT, Season S
WHERE
    Team.idTeam = GT.idTeam AND
    GT.idGroup = G.idGroup AND
    G.idSeason = S.idSeason AND
    S.startDate LIKE "2022%"
GROUP BY Team.country
ORDER BY count(*) DESC, Team.country ASC;

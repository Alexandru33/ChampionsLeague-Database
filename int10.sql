/*
We want to know what the number of goals that happened in each group so far in 2022/2023 Champions League season.
List the letter of the group and the number of goals as "total_goals".ABORT
Order by "total_goals" in descending order.
*/

.mode columns
.headers on 
.nullvalue NULL



SELECT 
    G1.letter,
    (
        SELECT (sum(M.numberGoalsHome)+sum(M.numberGoalsAway)) as "total_goals"
        FROM [Match] M, [Group] G, Team T, GroupTeam GT, Season S
        WHERE
        M.idHome = T.idTeam AND
        GT.idTeam = T.idTeam AND
        GT.idGroup = G.idGRoup AND
        G.letter= G1.letter AND
        S.idSeason = G1.idSeason AND
        S.idSeason = G.idSeason AND
        S.startDate LIKE "2022%"

    ) as "total_goals"
FROM [Group] G1
ORDER BY "total_goals" DESC;
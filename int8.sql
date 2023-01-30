/* 
MEDIUM
Show the results of all the spectacular matches that happened in the 2022/2023 Champion's League.
A spectacular match is a match with 5 or more goals scored in total,  where both teams scored at least once.
List the date of the match, the group in which the match happened, the name of the teams and the score
*/


.mode columns
.headers on 
.nullvalue NULL


SELECT DISTINCT
    M.date,
    G.letter AS "group",
    T1.name AS “home_team”,
    M.numberGoalsHome AS “home_goals”, 
    M.numberGoalsAway AS “away_goals”,
    T2.name AS “away_Team”

FROM Team T1, Team T2, [Match] M, Season S, [Group] G, GroupTeam GT1, GroupTeam GT2

WHERE 
    T1.idTeam = GT1.idTeam AND
    T2.idTeam = GT2.idTeam AND
    GT2.idGroup = GT1.idGroup AND
    GT1.idGroup = G.idGroup AND
    G.idSeason = S.idSeason AND
    S.startDate LIKE "2022%" AND
    M.idHome = T1.idTeam AND 
    M.idAway = T2.idTeam AND
    T1.idTeam <> T2.idTeam AND 
    (M.numberGoalsHome + M.numberGoalsAway >= 5) AND (M.numberGoalsAway >= 1) AND
    (M.numberGoalsHome >= 1)
ORDER BY G.letter, M.date;
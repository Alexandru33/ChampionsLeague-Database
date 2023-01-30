/*
HARD
We all know it is an amazing feeling when your team scores a goal in the last 5 minutes of the game.
Therefore, what matches would change their scores if we ignore the goals scored after minute 85.
List the following columns:
- date of the match as "date";
- the letter of the group in which the game happened as "group_letter";
- the names of the 2 teams
- the old score
- the new score, if the goals scored after minute 85 would be ignored
Order by the letter of the group.
*/


.mode columns
.headers on 
.nullvalue NULL

SELECT DISTINCT
    M.date,
    G.letter AS "group_letter",
    T1.name,
    T2.name,
    M.numberGoalsHome as "old_home_goals",
    M.numberGoalsAway as "old_away_goals",

    (
        M.numberGoalsHome
        -
        (
            SELECT count(*)
            FROM Goal, Player, Contract, Team
            WHERE
                Goal.idMatch = M.idMatch AND
                Goal.minuteTime >= 85 AND
                Goal.idPlayer = Player.idPlayer AND
                Player.idPlayer = Contract.idPlayer AND
                Contract.idTeam = Team.idTeam AND
                (
                (
                    Team.idTeam  = T1.idTeam AND
                    Goal.isAg = 0
                )
                OR
                (
                    Team.idTeam  = T2.idTeam AND
                    Goal.isAg = 1
                )
                )

            
            
            
        )
    ) as "new_home_goals",

     (
        M.numberGoalsAway
        -
        (
            SELECT count(*)
            FROM Goal, Player, Contract, Team
            WHERE
                Goal.idMatch = M.idMatch AND
                Goal.minuteTime >= 85 AND
                Goal.idPlayer = Player.idPlayer AND
                Player.idPlayer = Contract.idPlayer AND
                Contract.idTeam = Team.idTeam AND
                (
                (
                    Team.idTeam  = T2.idTeam AND
                    Goal.isAg = 0
                )
                OR
                (
                    Team.idTeam  = T1.idTeam AND
                    Goal.isAg = 1
                )
                )

            
            
            
        )
    ) as "new_away_goals"


FROM
    [Match] M, Team T1, Team T2, [Group] G, GroupTeam GT1, GroupTeam GT2
WHERE
    M.idMatch in
    (
        SELECT DISTINCT [Match].idMatch
        FROM [Match] , Goal
        WHERE
            Goal.idMatch = [Match].idMatch AND
            Goal.minuteTime >= 85
    ) AND
    M.idHome = T1.idTeam AND
    M.idAway = T2.idTeam AND
    T1.idTeam = GT1.idTeam AND
    T2.idTeam = GT2.idTeam AND
    GT1.idGroup = GT2.idGroup AND
    G.idGroup = GT1.idGroup
ORDER BY
    G.letter;
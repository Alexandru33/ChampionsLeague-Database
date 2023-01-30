/*

HARD

Compute the standings of the group "A"
List the columns in this order:
- the group letter ("A") as "group_letter";
- the team name as "team_name";
- numer of games played in the group as "games played";
- number of won matches as "W";
- number of draws as "D";
- number of lost matches as "L";
- number of goals scored as "goals scored";
- number of goals conceded as "goals conceded";
- goal difference as "goal diff";
- number of points as "points";

Order the teams just as in normal life ( by points, goal difference, goals scored, goals conceded).
*/

.mode columns
.headers on 
.nullvalue NULL

CREATE VIEW Gol AS
SELECT 
    Team.name,
    Team.idTeam,
    (
        (SELECT sum([Match].numberGoalsHome)
        FROM [Match]
        WHERE [Match].idHome = Team.idTeam)
        +
        (SELECT sum([Match].numberGoalsAway)
        FROM [Match]
        WHERE [Match].idAway = Team.idTeam)

    ) as "goals_scored",
    (

        (SELECT sum([Match].numberGoalsHome)
        FROM [Match]
        WHERE [Match].idAway = Team.idTeam)
        +
        (SELECT sum([Match].numberGoalsAway)
        FROM [Match]
        WHERE [Match].idHome = Team.idTeam)
    ) as "goals_conceded"
FROM
    Team
ORDER BY
    Team.idTeam;




SELECT 
    [Group].letter AS "group_letter",
    Team.name AS "team_name",
    (SELECT count(*) FROM [Match] WHERE [Match].idHome = Team.idTeam OR [Match].idAway= Team.idTeam) AS "games played",

    (SELECT count(*) FROM [Match] WHERE [Match].idWinner = Team.idTeam) as "W",
    (SELECT count(*) FROM [Match] WHERE [Match].idWinner is NULL AND ([Match].idHome = Team.idTeam OR [Match].idAway = Team.idTeam)) as "D",
    (SELECT count(*) FROM [Match] WHERE [Match].idWinner <> Team.idTeam  AND ([Match].idHome = Team.idTeam OR [Match].idAway = Team.idTeam) ) as "L",

    (
        (SELECT sum([Match].numberGoalsHome)
        FROM [Match]
        WHERE [Match].idHome = Team.idTeam)
        +
        (SELECT sum([Match].numberGoalsAway)
        FROM [Match]
        WHERE [Match].idAway = Team.idTeam)

    ) AS "goals_scored",
    (

        (SELECT sum([Match].numberGoalsHome)
        FROM [Match]
        WHERE [Match].idAway = Team.idTeam)
        +
        (SELECT sum([Match].numberGoalsAway)
        FROM [Match]
        WHERE [Match].idHome = Team.idTeam)
    ) AS "goals_conceded" ,

    (SELECT (goals_scored - goals_conceded )
    FROM Gol
    WHERE Gol.idTeam = Team.idTeam) AS "goal_diff",

    (
        (SELECT count(*) FROM [Match] WHERE [Match].idWinner = Team.idTeam)*3
        +
        (SELECT count(*) FROM [Match] WHERE [Match].idWinner is NULL AND ([Match].idHome = Team.idTeam OR [Match].idAway = Team.idTeam) )
    )
    AS "points"
   
FROM
    Team, [Group], GroupTeam, Season
WHERE
    [Group].letter = "A" AND
    Team.idTeam = GroupTeam.idTeam AND
    GroupTeam.idGroup = [Group].idGroup AND
    [Group].idSeason = Season.idSeason AND
    Season.startDate LIKE "2022%"
ORDER BY [Group].letter, points DESC, goal_diff DESC, goals_scored DESC, goals_conceded ASC;


DROP VIEW Gol;


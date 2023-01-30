/*
EASY
What is the amount of money received by the winner of the Final of Champion's League season 2022-2023? 
List a single column named "prize (€ )" with a single row. The singel cell should contain the requested amount of money.
*/

.mode columns
.headers on 
.nullvalue NULL

SELECT Stage.qualifyPrize AS "prize in ( € )" 
FROM Stage  , Season 
WHERE Stage.idSeason = Season.idSeason AND Stage.typee = "Final" AND Season.startDate LIKE "2022%";    

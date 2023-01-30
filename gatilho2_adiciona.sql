.mode columns
.headers on
.nullvalue NULL

Create Trigger Insert_Goal
Before Insert On Goal
For Each Row
When 
    not exists
    (
        SELECT  *
        FROM  Contract C, [Match] M
        WHERE
            M.idMatch = New.idMatch AND
            C.idPlayer  = New.idPlayer AND
            C.startDate < M.date AND
            C.endDate > M.date AND
            
            (C.idTeam = M.idHome OR
            C.idTeam = M.idAway)
    )

Begin
SELECT raise( abort, "The introduced goal has wrong details");
End;

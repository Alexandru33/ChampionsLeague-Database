.mode columns
.headers on 
.nullvalue NULL


Create Trigger Insert_Contract
Before Insert on Contract
For Each Row
When EXISTS (SELECT * FROM Contract C WHERE New.startDate < C.endDate AND C.idPlayer = New.idPlayer)
Begin
SELECT raise( abort, "This player has not ended his last contract yet. Please review the contract dates!");
End;
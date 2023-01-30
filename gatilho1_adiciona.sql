
.mode columns
.headers on 
.nullvalue NULL

Create Trigger Delete_Match
After Delete On [Match]
For Each Row
Begin
Delete from Goal where idMatch = Old.idMatch;
End;

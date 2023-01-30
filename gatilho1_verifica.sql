.mode columns
.headers on
.nullvalue NULL


SELECT * FROM [Match] WHERE [Match].idMatch > 45;

.print "======================================================================="

SELECT * FROM Goal WHERE Goal.idMatch > 45;

DELETE FROM [Match] WHERE [Match].idMatch = 48;

SELECT * FROM [Match] WHERE [Match].idMatch > 45;

.print "======================================================================="
SELECT * FROM Goal WHERE Goal.idMatch > 45;


USE Uni;

--arithmetic operations
SELECT 20-4 AS 'Summe';
SELECT 20-4 AS 'Differenz';
SELECT 20*4 AS 'Produkt';

SELECT * FROM Noten;
SELECT * FROM Noten WHERE Modul=3;

--adding 10 points to exam thats below 90points
UPDATE Noten
SET Klausur1 = Klausur1+10
FROM Noten
WHERE Klausur1 <= 90;

--betrag/absolute value of a number
SELECT ABS(-85) AS 'Absolute result';

--powerTo, potenzieren
SELECT POWER(2,3) AS '2 to the power of 3';
SELECT POWER(2,10) AS 'emsbach favourite number 2^10';

--everything uppercase
SELECT UPPER('Testing testing') AS Outputput;

--everything lowercase
SELECT LOWER('TESTINGTESTING') AS lowercase;

SELECT UPPER(StudentVorname) AS 'Name',
UPPER(StudentNachname),
LOWER(StudentStadt)
FROM StudentAnmeldung;

--get parts of a string, substring - first number start, second number length
SELECT SUBSTRING(StudentVorname,1,3) FROM StudentAnmeldung;

--select inital from first name and then the last name for a usual name format
SELECT SUBSTRING(StudentVorname, 1,1) + '.' + StudentNachName
FROM StudentAnmeldung;

--select the combined format of the student name, join club name abbreviation 
SELECT SUBSTRING(StudentVorname,1,1) + '.' + StudentNachname AS 'Name',
SUBSTRING(ClubName, 1,3) AS Club
FROM StudentAnmeldung
INNER JOIN Club ON StudentAnmeldung.StudentClub = Club.ClubID;
-- Session 3 5th June 2023
USE Uni;
SELECT * FROM dbo.Noten;

--Aufsummieren von Spalten/Columns
SELECT SUM(Klausur1) FROM Noten;

--Sum multiple with custom name
SELECT Sum(Klausur1) AS Noten1, Sum(Klausur2), Sum(Klausur3) FROM Noten;

--calculate average value of column using AVG
SELECT AVG(Klausur1) AS Median, SUM(Klausur1) AS Summe FROM Noten;

--get the minimum and maximum value of a column
SELECT MIN(Klausur1) AS Minimum, MAX(Klausur1) AS Maximum FROM dbo.Noten;

--Group answer set so entries are summed up and grouped
--Grouing value has to be a bind column from SELECT
SELECT StudentStadt, COUNT(*) AS Anzahl
FROM StudentAnmeldung
GROUP BY StudentStadt;

SELECT * FROM StudentAnmeldung;
SELECT * FROM Noten;

--only include results that match a criteria of the grouping column
SELECT StudentStadt, COUNT(*) AS Anzahl
FROM StudentAnmeldung
GROUP BY StudentStadt HAVING COUNT(*) > 1;

--Selektion von bestimmten Einträgen/Zeilen/Rows
--like basically regex selection
SELECT * FROM StudentAnmeldung
WHERE StudentVorname like 'M%';

--end on specific letter with multiple options
SELECT * FROM StudentAnmeldung
WHERE StudentVorname like '%[N,X]'

--select specific range
SELECT * FROM StudentAnmeldung
WHERE StudentNachname like '%[k-n]';

--only show/select unique values
SELECT DISTINCT StudentStadt FROM StudentAnmeldung;
--count unique values in column, call it "Städte"
SELECT COUNT(DISTINCT(StudentStadt)) AS 'Städte' FROM StudentAnmeldung;

--sortieren des answer sets in alphabetischer reihenfolge nach column
SELECT * FROM StudentAnmeldung
ORDER BY StudentNachname ASC;

--ASC default/impliziert, DESC muss erwähnt werden
SELECT DISTINCT StudentNachname FROM StudentAnmeldung
ORDER BY StudentNachname DESC;

--limit to specific amount of rows, after select before bind columns
SELECT TOP 3 * FROM StudentAnmeldung;

--combination of order and top
SELECT TOP 3 *
FROM StudentAnmeldung
ORDER BY StudentID ASC;

--instead of hard limit value add PERCENT to TOP to show percentage of tows
SELECT TOP 70 PERCENT *
FROM StudentAnmeldung;

--select exact match
SELECT * FROM StudentAnmeldung
WHERE StudentStadt = 'Koeln';

--where mit range of possible answers
SELECT * FROM StudentAnmeldung
WHERE StudentStadt IN('Koeln', 'Essen');

--between two numbers
SELECT * FROM Noten
WHERE KLausur1 BETWEEN 10 AND 90;

--between two characters, left inclusive right value non inclusive
--between <h.... >m
SELECT * FROM StudentAnmeldung
WHERE StudentVorname BETWEEN 'h' AND 'm';

--negation of between values
--everything outside the range
SELECT * FROM StudentAnmeldung
WHERE StudentVorname NOT BETWEEN 'h' AND 'm';
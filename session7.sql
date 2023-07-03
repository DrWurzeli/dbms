USE Uni;

--Länge der Abfrage messen und ausgeben
SELECT LEN('Test Buchstaben');

--Länge mehrerer Zeilen/Einträge ausgeben
SELECT LEN(StudentVorname) FROM StudentAnmeldung;

SELECT LEN(StudentVorname) FROM StudentAnmeldung
WHERE StudentStadt = 'Koeln';

SELECT StudentVorname, LEN(StudentVorname) FROM StudentAnmeldung
WHERE StudentStadt = 'Koeln';

--all students with name length of 4
SELECT * FROM StudentAnmeldung
WHERE LEN(StudentVorname) = 4;

--selection with a lot of whitespace!
SELECT ('         Max');
--move it to the left left left
SELECT LTRIM('          Max');
--move it to the right right right
SELECT RTRIM('          Max');

--replace text in text with text
SELECT REPLACE('TestingStringTest', 'String', 'Striing');
--use replace to remove all strings
SELECT REPLACE ('Test Test Test', ' ', '');

--search for chars and return where the character first position is
--not case sensitive, counts whitespace
SELECT CHARINDEX('g', 'Hans im Glück');
--search for char again, but specify starting point
SELECT CHARINDEX('G', 'Hans im GlückG', 10);

--if no match is found, return 0
SELECT CHARINDEX('a', StudentVorname)
FROM StudentAnmeldung;

--reverse the selection
SELECT UPPER(REVERSE('Anna'));

SELECT REVERSE(StudentVorname) FROM StudentAnmeldung;
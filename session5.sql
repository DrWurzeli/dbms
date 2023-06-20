USE Uni;

-- join another table on the originally selected table on a matching column
SELECT NotenID, Modul FROM Noten
INNER JOIN Module
ON Noten.Modul = Module.ModulID;

-- values that are in both tables, overlapping values
SELECT NotenID, Modul, Klausur1, Klausur2, Klausur3
FROM Noten
INNER JOIN Module
ON Noten.Modul = Module.ModulID;

-- double join double fun
SELECT StudentVorname, NotenID, Modul, Klausur1
FROM Noten
INNER JOIN Module ON Noten.Modul = Module.ModulID
INNER JOIN StudentAnmeldung ON Noten.Student = StudentAnmeldung.StudentID;

-- add spaces to selection, merging two columns with a new name
SELECT StudentVorname + ' ' + StudentNachname AS GanzerName,
NotenID, Modul, Klausur1
FROM Noten
INNER JOIN Module ON Noten.Modul = Module.ModulID
INNER JOIN StudentAnmeldung ON Noten.Student = StudentAnmeldung.StudentID;

SELECT * FROM Noten;
SELECT * FROM StudentAnmeldung;

-- join two tables, showing values from left one and overlapping
SELECT * FROM Noten
LEFT JOIN StudentAnmeldung ON StudentAnmeldung.StudentID = Noten.Student;

-- join two tables, showing overlapping and right table values
SELECT * FROM Noten
RIGHT JOIN StudentAnmeldung ON StudentAnmeldung.StudentID = Noten.Student;

-- full join, showing all values from both all tables
SELECT * FROM Noten
FULL JOIN StudentAnmeldung
ON StudentAnmeldung.StudentID = Noten.Student;

SELECT * FROM Club;
SELECT * FROM Module;

-- show two tables at the same time, naming based on first one though
SELECT * FROM Club
UNION
SELECT * FROM Module;


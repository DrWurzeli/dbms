USE Uni;

SELECT * FROM StudentAnmeldung
WHERE StudentVorname = 'Max';

SELECT StudentVorname AS Name, StudentNachname AS Nachname
FROM StudentAnmeldung;

SELECT StudentStadt
FROM StudentAnmeldung;

SELECT StudentStadt
FROM StudentAnmeldung
WHERE StudentNachname = 'Mustermann';

SELECT *
FROM StudentAnmeldung
WHERE StudentStadt = 'Koeln' AND StudentVorname = 'Max';

--Anzahl erwarteter Zeichen, Nachkommastellen DECIMAL(x,y)
CREATE TABLE Noten(
	NotenID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	Student INT,
	Modul TINYINT,
	Klausur1 SMALLINT,
	Klausur2 SMALLINT,
	Klausur3 SMALLINT,
	Mittelwert DECIMAL(5,2),
	Stand BIT
);

INSERT INTO dbo.Noten(Student, Modul, Klausur1, Klausur2, Klausur3, Mittelwert, Stand)
VALUES (2, 2, 85, 65, 74, 1.00, 'True');

SELECT * FROM Noten;

SELECT (Klausur1+Klausur2+Klausur3)/3 AS Schnitt
FROM Noten;

INSERT INTO dbo.StudentAnmeldung(StudentVorname, StudentNachname, StudentStadt)
VALUES
	('Peter','Pan','Muenchen'),
	('Hans', 'Schmidt','Duesseldorf'),
	('Manny', 'Frick', 'Essen'),
	('Lisa', 'Simpson', 'Bonn')
	;

SELECT * FROM StudentAnmeldung;

--eine Klausur fehlt
INSERT INTO dbo.Noten(Student, Modul, Klausur1, Klausur3)
VALUES (6,2,88,67);

--Zeile löschen
DELETE FROM dbo.Noten WHERE NotenID = 3;

SELECT * FROM dbo.Module;

INSERT INTO dbo.Module(ModulName)
VALUES
	('DBMS'),
	('JAVA'),
	('C++')
;

--Reset der Tabelle
TRUNCATE TABLE dbo.Module;

SELECT * FROM dbo.StudentAnmeldung;

--Update eines Eintrages (WHERE nutzen zur Eingrenzung)
UPDATE StudentAnmeldung
SET StudentVorname = 'Maximilian'
WHERE StudentID = 1;

SELECT * FROM Noten;
--Berechnung hinzufügen automatisch
UPDATE dbo.Noten
SET Mittelwert=(Klausur1+Klausur2+Klausur3)/3;

DELETE FROM dbo.Noten;

INSERT INTO dbo.Noten(Student, Modul, Klausur1, Klausur2, Klausur3)
VALUES
	(2, 2, 85, 65, 74),
	(6, 2, 88, 52, 33),
	(1, 3, 74, 90, 20)
;

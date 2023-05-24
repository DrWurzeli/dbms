-- I wonder how many naming conventions this violates. probably all of them.
CREATE DATABASE Uni;

USE Uni;

CREATE TABLE StudentAnmeldung(
	StudentID INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	StudentVorname VARCHAR(20),
	StudentNachname VARCHAR(20),
	StudentStadt VARCHAR(20)
);

CREATE TABLE Module(
	ModulID tinyint PRIMARY KEY NOT NULL IDENTITY(1,1),
	ModulName VARCHAR(20)
);

ALTER TABLE Module
ADD Anzahl smallint;

ALTER TABLE Module
DROP COLUMN Anzahl;

INSERT INTO dbo.StudentAnmeldung(StudentVorname, StudentNachname, StudentStadt)
VALUES
('Franz', 'Meier', 'Duesseldorf'),
('Max', 'Mustermann', 'Koeln')
;

SELECT *
FROM Uni.dbo.StudentAnmeldung;

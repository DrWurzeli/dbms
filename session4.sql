--part4
USE Uni;

CREATE TABLE Club(
	ClubID tinyint IDENTITY(1,1) NOT NULL PRIMARY KEY,
	ClubName VARCHAR(20)
);

SELECT * FROM Club;

SELECT * FROM StudentAnmeldung;

ALTER TABLE StudentAnmeldung
ADD StudentClub VARCHAR(20);

UPDATE StudentAnmeldung
SET StudentClub = null;

ALTER TABLE StudentAnmeldung
ALTER COLUMN StudentClub TINYINT;

DELETE FROM StudentAnmeldung
WHERE StudentID between 7 and 12;

UPDATE StudentAnmeldung
SET StudentClub = 3
WHERE StudentID = 3;

SELECT * FROM Noten;

INSERT INTO Club(ClubName)
VALUES
('Tennis'),('Schach'),('Tischtennis'),('Bogenschieﬂen');

ALTER TABLE StudentAnmeldung
ADD CONSTRAINT FK_StudentClub_ClubID
FOREIGN KEY (StudentClub) REFERENCES Club(ClubID);

SELECT * FROM Club;

ALTER TABLE Noten
ADD CONSTRAINT FK_Modul_StudentModul
FOREIGN KEY (Modul) REFERENCES StudentAnmeldung(StudentModul);

ALTER TABLE Noten
ADD CONSTRAINT FK_Modul_ModulName
FOREIGN KEY (Modul) REFERENCES Module(ModulName);
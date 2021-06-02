DROP DATABASE BEATLES_DB;
CREATE DATABASE BEATLES_DB;
USE BEATLES_DB;

-- //////////////////////// --

CREATE TABLE Musica (
	idMusica INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(30),
    votos INT DEFAULT 0
);

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (50),
    login VARCHAR (50),
    senha VARCHAR (16),
    fkMusica INT,
    FOREIGN KEY (fkMusica) REFERENCES Musica (idMusica)
);

-- //////////////////////// --

INSERT INTO Musica (titulo)
	VALUES
	('A Day In The Life'),
	('I Want Hold Your Hand'),
	('Strawberry Fields Forever'),
	('Yesterday'),
	('In My Life'),
	('Something'),
	('Hey Jude'),
	('Let It Be'),
	('Come Together'),
	('While My Guitar Gently Weeps');
        
SELECT * FROM Usuario;
SELECT * FROM Musica;

SELECT titulo, votos FROM Musica ORDER BY votos DESC;
DROP DATABASE BEATLES_DB;
CREATE DATABASE BEATLES_DB;
USE BEATLES_DB;

-- //////////////////////// --

CREATE TABLE Usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (50),
    login VARCHAR (50),
    senha VARCHAR (16)
);

INSERT INTO Usuario
	VALUES
		(null, 'John Lennon', 'john', 'lennon123');
        
SELECT * FROM Usuario;
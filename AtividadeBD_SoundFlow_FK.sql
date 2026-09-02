CREATE DATABASE SoundFlow;
USE SoundFlow;

CREATE TABLE Artistas (
id_artista INT PRIMARY KEY AUTO_INCREMENT,
nome_artista VARCHAR(150) NOT NULL,
genero_musical VARCHAR (100)
);

CREATE TABLE Albuns (
id_album INT PRIMARY KEY AUTO_INCREMENT,
titulo_album VARCHAR(255) NOT NULL,
ano_lancamento DATE NOT NULL,
id_artista_fk INT,
CONSTRAINT fk_artista_album
FOREIGN KEY (id_artista_fk) REFERENCES Artistas (id_artista)
ON DELETE CASCADE
);

INSERT INTO Artistas (nome_artista, genero_musical) VALUES
('Daniel Caesar', 'R&B / Soul'),
('Laufey', 'Jazz Pop'),
('Deftones', 'Alternative Metal'),
('Alicia Keys', 'R&B / Soul'),
('Michael Jackson', 'Pop'),
('System of a Down', 'Nu Metal'),
('Limp Bizkit', 'Nu Metal'),
('Linkin Park', 'Nu Metal'),
('Djavan', 'MPB'),
('Frank Ocean', 'R&B / Neo-Soul');

INSERT INTO Albuns (titulo_album, ano_lancamento, id_artista_fk) VALUES
('Freudian', '2017-08-25', 1),
('Bewitched', '2023-09-08', 2),
('White Pony', '2000-06-20', 3),
('Songs in A Minor', '2001-06-05', 4),
('Thriller', '1982-11-30', 5),
('Toxicity', '2001-09-04', 6),
('Significant Other', '1999-06-22', 7),
('Hybrid Theory', '2000-10-24', 8),
('Luz', '1982-08-01', 9),
('Blonde', '2016-08-20', 10);

select * from albuns

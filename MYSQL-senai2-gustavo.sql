CREATE DATABASE Senai2;
USE Senai2;

CREATE TABLE Professor (
	id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

CREATE TABLE Aluno (
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_nasc DATE NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE Disciplina (
	id_disciplina INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Sala (
	id_sala INT PRIMARY KEY AUTO_INCREMENT,
    numero_sala VARCHAR(3),
    tipo VARCHAR(100)
);

INSERT INTO Professor (nome, data_nasc, cidade)
VALUES ('Alceu Matteucci', '2000-12-28', 'Fraiburgo'),
('Leo Victor Corso', '1998-08-01', 'Água Doce'),
('Douglas Melere Tibola Junior', '2005-11-07', 'Ibicaré');

INSERT INTO Aluno (nome, data_nasc, cidade, telefone)
VALUES ('Guilherme','2008-10-02','Tangará','N/A'),
('Bruno','2009-01-05','Tangará','N/A'),
('Gustavo Santos','2008-06-23','Tangará','N/A'),
('Leonardo','2008-12-30','Joaçaba','N/A'),
('João Zagonel','2006-02-21','Joaçaba','N/A'),
('Eric','2008-04-17','Catanduvas','N/A'),
('Kauã','2009-04-27','Treze Tílias','N/A'),
('Mayara','2001-10-14','Catanduvas','N/A'),
('Jeyliel','2007-02-02','Ouro','N/A'),
('Kaike','2009-02-11','Herval DOeste','N/A'),
('João Vitor','2004-12-17','Capinzal','N/A'),
('Calléu','2006-08-14','Água Doce','N/A'),
('Artur','2008-02-02','Joaçaba','N/A'),
('Gustavo Mauro','2008-02-22','Catanduvas','N/A'),
('Crystyan','2008-10-20','Treze Tílias','N/A'),
('Mateus','2009-02-17','Treze Tílias','N/A'),
('Gustavo Cenci','2006-12-05','Treze Tílias','N/A'),
('Samuel','2006-02-18','Joaçaba','N/A');


INSERT INTO Disciplina (nome)
VALUES ('Fundamentos de Eletroeletrônica Aplicada'),
('Introdução à Tecnologia da Informação e Comunicação'),
('Lógica de Programação'),
('Banco de Dados'),
('Introdução ao Desenvolvimento de Projetos'),
('Modelagem de Sistemas'),
('Programação de Aplicativos');

INSERT INTO Sala (numero_sala, tipo)
VALUES ('201','Laboratório de Gestão e Liderança'), 
('202','Laboratório de Eletrônica'),
('203','Laboratório de Eletricidade Predial'),
('204','Laboratório de Eletricidade Industrial Avançada'),
('205','Laboratório de Aplicação 4.0'),
('206','Laboratório de Automação Industrial'),
('207','Laboratório de Eletricidade Industrial'),
('208','Laboratório SEP'),
('501','Comum'),
('502','Comum'),
('503','Comum'),
('505','Comum'),
('506','Laboratório Informática'),
('507','PCP'),
('508','Laboratório de Informática'),
('509','Laboratório de Informática'),
('511','Depósito'),
('512','Laboratório de Informática');

SELECT * FROM Aluno;
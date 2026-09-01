CREATE DATABASE cinestream2;
USE cinestream2;

CREATE TABLE Filme(
id_filme INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
titulo VARCHAR(255) NOT NULL,
ano_lancamento VARCHAR (30),
duracao_minutos VARCHAR(20)
);

CREATE TABLE Diretor(
id_diretor INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR (40) NOT NULL,
nacionalidade VARCHAR (25),
data_nascimento DATE NOT NULL
);

CREATE TABLE Usuario(
id_usuario INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_completo VARCHAR (50) NOT NULL, 
email VARCHAR(100) NOT NULL, 
plano VARCHAR (30) NOT NULL
);

CREATE TABLE Categoria(
id_categoria INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_genero VARCHAR (30) NOT NULL
);


INSERT INTO Filme (titulo, ano_lancamento, duracao_minutos) VALUES
('Cidade de Deus', '2002', '130'),
('Central do Brasil', '1998', '113'),
('O Auto da Compadecida', '2000', '104'),
('Tropa de Elite', '2007', '115'),
('Minha Mãe É uma Peça', '2013', '84'),
('Bacurau', '2019', '131'),
('Que Horas Ela Volta?', '2015', '112'),
('O Palhaço', '2011', '90'),
('Carandiru', '2003', '145'),
('Aquarius', '2016', '146');

INSERT INTO Diretor (nome, nacionalidade, data_nascimento) VALUES
('Fernando Meirelles', 'Brasileira', '1955-11-09'),
('Walter Salles', 'Brasileira', '1956-04-12'),
('Guel Arraes', 'Brasileira', '1953-12-12'),
('José Padilha', 'Brasileira', '1967-08-01'),
('Kleber Mendonça Filho', 'Brasileira', '1968-11-03'),
('Anna Muylaert', 'Brasileira', '1964-04-21'),
('Selton Mello', 'Brasileira', '1972-12-30'),
('Hector Babenco', 'Brasileira', '1946-02-07'),
('Glauber Rocha', 'Brasileira', '1939-03-14'),
('Laís Bodanzky', 'Brasileira', '1969-09-23');

INSERT INTO Usuario (nome_completo, email, plano) VALUES
('Ana Silva', 'ana.silva@email.com', 'Básico'),
('Bruno Santos', 'bruno.santos@email.com', 'Padrão'),
('Carla Oliveira', 'carla.oliveira@email.com', 'Premium'),
('Daniel Souza', 'daniel.souza@email.com', 'Básico'),
('Eduardo Pereira', 'eduardo.pereira@email.com', 'Padrão'),
('Fernanda Lima', 'fernanda.lima@email.com', 'Premium'),
('Gabriel Costa', 'gabriel.costa@email.com', 'Básico'),
('Helena Rodrigues', 'helena.rodrigues@email.com', 'Padrão'),
('Igor Alves', 'igor.alves@email.com', 'Premium'),
('Juliana Gomes', 'juliana.gomes@email.com', 'Básico');

INSERT INTO Categoria (nome_genero) VALUES
('Ação'),
('Comédia'),
('Drama'),
('Romance'),
('Terror'),
('Suspense'),
('Documentário'),
('Animação'),
('Aventura'),
('Ficção Científica');
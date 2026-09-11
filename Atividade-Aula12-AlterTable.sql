CREATE DATABASE AulaPratica;
USE AulaPratica;

-- Tabelas para o Passo 1 (ADD)

CREATE TABLE Usuarios (
id INT PRIMARY KEY,
nome VARCHAR(100)
);

-- Tabelas para o Passo 2 (MODIFY)

CREATE TABLE Produtos (
id INT PRIMARY KEY,
preco FLOAT,
estoque VARCHAR(10)
);

-- Tabelas para o Passo 3 (RENAME)

CREATE TABLE Tbl_Antiga (
id INT PRIMARY KEY, 
col_nome VARCHAR(50)
);

-- Tabelas para o Passo 4 (DROP)

CREATE TABLE Backup_Sistema (
id INT PRIMARY KEY, 
nota_fiscal TEXT, 
lixo_digital VARCHAR(50)
);

-- Tabelas para o Passo 5 (DELETE)

CREATE TABLE Mensagens (
id INT PRIMARY KEY, 
texto VARCHAR(255), 
status VARCHAR(20)
);

INSERT INTO Mensagens 
VALUES (1, 'Olá!', 'Lida'), (2, 'SPAM detectado', 'Spam'), (3, 'Conta vencida', 'Spam');

-- Passo 1
ALTER TABLE Usuarios ADD COLUMN email VARCHAR(100);
ALTER TABLE Usuarios ADD COLUMN data_cadastro DATE;
ALTER TABLE Usuarios ADD COLUMN cpf CHAR(11) UNIQUE;
ALTER TABLE Usuarios ADD COLUMN status_user VARCHAR(30);
ALTER TABLE Usuarios ADD COLUMN idade INT;
ALTER TABLE Produtos ADD COLUMN nome VARCHAR(100);
DESC Usuarios;
-- Passo 2
ALTER TABLE Produtos MODIFY COLUMN preco DECIMAL(10,2);
ALTER TABLE Produtos MODIFY COLUMN estoque INT;
ALTER TABLE Produtos MODIFY COLUMN id INT NOT NULL;
ALTER TABLE Produtos MODIFY COLUMN nome VARCHAR(200) NOT NULL;
ALTER TABLE Usuarios MODIFY COLUMN email VARCHAR(255) NOT NULL;
DESC Produtos;
-- Passo 3
ALTER TABLE Tbl_Antiga RENAME COLUMN col_nome TO nome_completo;
ALTER TABLE Tbl_Antiga ADD COLUMN temp VARCHAR(255);
ALTER TABLE Tbl_Antiga RENAME COLUMN temp TO observacoes;
ALTER TABLE Usuarios RENAME COLUMN id TO id_usuario;
DESC Tbl_Antiga;
-- Passo 4
ALTER TABLE Backup_Sistema DROP COLUMN lixo_digital;
ALTER TABLE Backup_Sistema ADD COLUMN temp_data DATE;
ALTER TABLE Backup_Sistema DROP COLUMN temp_data;
ALTER TABLE Backup_Sistema DROP COLUMN nota_fiscal;
ALTER TABLE Backup_Sistema DROP COLUMN tabelalegal;
ALTER TABLE Usuarios DROP COLUMN idade;
DESC Backup_Sistema;
-- Passo 5
DELETE FROM Mensagens WHERE id = 1;
DELETE FROM Mensagens WHERE status = 'Spam';
INSERT INTO Mensagens VALUES (4, 'Teste', 'N/A');
SET SQL_SAFE_UPDATES =0;
DELETE FROM Mensagens WHERE id = 4;
CREATE TABLE TESTES (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(10)
);
INSERT INTO TESTES (nome) VALUES ('teste1');
DELETE FROM TESTES;
select * from TESTES;
DESC Mensagens




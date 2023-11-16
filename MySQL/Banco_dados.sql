CREATE DATABASE neylim;

USE neylim;
CREATE TABLE Clientes(
    ID_Cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR (100) NOT NULL, 
    Email VARCHAR (255) UNIQUE NOT NULL,
    Telefone VARCHAR(20), 
    Endereço VARCHAR(255),
    Cidade VARCHAR(100), 
    Estado VARCHAR(2),
    CEP VARCHAR(10),
    Data_cadastro DATE DEFAULT CURRENT_DATE
);

SELECT * FROM clientes;

INSERT INTO clientes (Nome, Email, Telefone, Endereço, Cidade, Estado, CEP)
VALUES 
('Neylor Henrique','neylor.henriqueo1@gmail.com','31-99864-8054', 'São Jão Batista', 'Barão de Cocais', 'MG', '35970-000'),
('Gabriel Gabs','Gabriel_freitas@gmail.com','34-99768-9776', 'Boa Vista', 'Uberaba', 'MG', '38072-120'),
('Bruna Freitas','Bruns_freitas@gmail.com','34-99882-0017', 'Ilha-Bela', 'Uberaba', 'MG', '11630-000')
; 

UPDATE clientes
SET Cidade = 'Maldivas'
WHERE ID_Cliente = 3

DELETE FROM clientes
WHERE ID_Cliente = 3

CREATE TABLE produtos (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Preço DECIMAL(10,2)
);

ALTER TABLE produtos
ADD COLUMN origem VARCHAR (255);

ALTER TABLE clientes
CHANGE celular Telefone VARCHAR(20);

SELECT * FROM produtos;

DROP TABLE produtos;


CREATE DATABASE IF NOT EXISTS Exemplo_Triggers;

USE Exemplo_Triggers;

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Historico_novos_clientes (
    id_registro INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    nome_cliente VARCHAR(100),
    email_cliente VARCHAR(100),
    data_insercao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido INT PRIMARY KEY,
    descricao VARCHAR(100),
    status VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS historico_pedidos (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    descricao_anterior VARCHAR(100),
    status_anterior VARCHAR(50),
    data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

CREATE TABLE IF NOT EXISTS historico_eclusao_pedidos (
    id_exclusao INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    descricao_excluida VARCHAR(100),
    status_excluido VARCHAR(50),
    data_exclusao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido)
);

DELIMITER ;

CREATE TRIGGER IF NOT EXISTS after_insert_cliente
AFTER INSERT ON clientes
FOR EACH ROW

BEGIN

INSERT INTO historico_novos_clientes (id_cliente, nome_cliente, email_cliente)
VALUES (NEW.id_cliente, NEW.nome, NEW.email);
END;

DELIMITER ;

INSERT INTO clientes (id_cliente, NOME, email)
VALUES
(1, "Neylor", "Neylor@gmail.com"),
(2, "Medina", "Medina@gmail.com")
;

SELECT * FROM clientes;

SELECT * FROM Historico_novos_clientes;
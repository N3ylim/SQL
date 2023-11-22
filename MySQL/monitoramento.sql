CREATE DATABASE estoque;

USE estoque;

CREATE TABLE IF NOT EXISTS armazenamento (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    quantidade INT NOT NULL,
    data_atualizacao DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS historico_armazenamento(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_item INT NOT NULL,
    quantidade_antiga INT NOT NULL,
    quantidade_nova INT NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_item) REFERENCES armazenamento(id_item)
);

INSERT INTO armazenamento (nome, quantidade, data_atualizacao)
VALUES ('Camisa', 50, '2023/10/22')

UPDATE armazenamento SET quantidade = 100 WHERE id_item = 2;

DELIMITER //

CREATE TRIGGER after_update_armazenamento
AFTER UPDATE ON armazenamento
FOR EACH ROW 
BEGIN
    IF OLD.quantidade != NEW.quantidade THEN
        INSERT INTO historico_armazenamento (id_item, quantidade_antiga, quantidade_nova)
        VALUES (NEW.id_item, OLD.quantidade, NEW.quantidade);
    END IF;
END;

DELIMITER ;

SELECT * FROM armazenamento

SELECT * FROM historico_armazenamento

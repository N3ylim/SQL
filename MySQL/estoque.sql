CRATE DATABASE IF NOT EXISTS estoque;

USE ESTOQUE;

CREATE TABLE IF NOT EXISTS estoque (
    id_item INT PRIMARY KEY,
    quantidade INT,
    data_atualizacao DATE
);

CREATE TABLE IF NOT EXISTS historico_estoque (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_item INT,
    quantidade_anterior INT,
    nova_quantidade INT,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_item) REFERENCES estoque(id_item)
);

DELIMITER //

CREATE TRIGGER after_update_estoque
AFTER UPDATE ON estoque
FOR EACH ROW
BEGIN
    DECLARE old_quantity INT;
    DECLARE new_quantity INT;
    
    SET old_quantity = OLD.quantidade;
    SET new_quantity = NEW.quantidade;
    
    IF old_quantity != new_quantity THEN
        INSERT INTO historico_estoque (id_item, quantidade_anterior, nova_quantidade)
        VALUES (OLD.id_item, old_quantity, new_quantity);
    END IF;
END//

DELIMITER ;

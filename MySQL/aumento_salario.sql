CREATE DATABASE IF NOT EXISTS aumento;

USE aumento;

CREATE TABLE IF NOT EXISTS funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_admissao DATE
);

CREATE TABLE IF NOT EXISTS aumento_salario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT NOT NULL,
    novo_salario DECIMAL(10, 2) NOT NULL,
    data_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);

INSERT INTO funcionarios VALUES (NULL, 'Neylor', 3000, '2022-01-01');
INSERT INTO aumento_salario VALUES (NULL, 1, 3000, '2022-01-01');

DELIMITER //

CREATE TRIGGER after_funcionario_insert
AFTER INSERT ON funcionarios
FOR EACH ROW
BEGIN
    IF NEW.salario > 3000 THEN
        INSERT INTO aumento_salario (id_funcionario, novo_salario)
        VALUES (NEW.id, NEW.salario);
    END IF;
END;
//

DELIMITER ;

INSERT INTO funcionarios VALUES (NULL, 'Fabim', 4000, '2022-01-02');

SELECT * FROM aumento_salario
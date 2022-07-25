-- QUESTÃO 1


-- primeiro vou criar um banco de dados
CREATE DATABASE db_infocolaboradores;

-- criei um use para o meu banco de dados
USE db_infocolaboradores;

-- agora vou cria a minha tabela
CREATE TABLE tb_info ( 
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_colaborador VARCHAR(255),
salario DECIMAL (12,2), -- o que vem antes da virgula é o total
cargo VARCHAR(255),
idade INT,
ativo BOOLEAN

);

SELECT * FROM tb_info;

INSERT INTO tb_info(nome_colaborador, salario, cargo, idade, ativo)VALUES("Maria", 2000,"Assistente de lógistica", 25,true);
INSERT INTO tb_info(nome_colaborador, salario, cargo, idade, ativo)VALUES("João", 999.90,"Jovem Aprendiz", 15,true);
INSERT INTO tb_info(nome_colaborador, salario, cargo, idade, ativo)VALUES("Manuela", 5000,"Gerente de Rh", 30,true);
INSERT INTO tb_info(nome_colaborador, salario, cargo, idade, ativo)VALUES("Miguel", 1800,"Assistente de RH", 28,true);
INSERT INTO tb_info(nome_colaborador, salario, cargo, idade, ativo)VALUES("Larissa", 1600,"Auxiliar Administrativo", 20,true);
INSERT INTO tb_info(nome_colaborador, salario, cargo, idade, ativo)VALUES("Carlos",450.50,"Jovem Aorendiz", 14, false);

-- para apaga apenas uma informação do meu id
DELETE FROM tb_info where id = 1; -- lembra de coloca o ; no final

DELETE FROM tb_info where id = 2;

DELETE FROM tb_info where id = 3;

SELECT * FROM tb_info;

-- Para deleta a tabela porque tava desorganizado o meu id  (fora de ordem)
DROP TABLE tb_info;


SELECT * FROM tb_info WHERE salario < 2000;
SELECT * FROM tb_info WHERE salario > 2000;

SELECT * FROM tb_info;

UPDATE tb_info SET ativo = true WHERE id = 6;

SELECT * FROM tb_info;








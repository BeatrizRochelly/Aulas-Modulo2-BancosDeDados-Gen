-- QUESTAO 3

-- primeiro criei um banco de dados

CREATE DATABASE db_escola;

USE db_escola;

-- criei uma tabela 
CREATE TABLE tb_infoestudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_aluno VARCHAR (255),
idade INT,
nota DECIMAL (8,2),
ano VARCHAR(255),
presente BOOLEAN
);

SELECT * FROM tb_infoestudantes;

INSERT INTO tb_infoestudantes(nome_aluno,idade,nota,ano,presente)VALUES("Maria Clara",8,8.6,"Terceiro ano do ensino fundamental",true);
INSERT INTO tb_infoestudantes(nome_aluno,idade,nota,ano,presente)VALUES("Laura Melo",17,"9","Terceiro ano do médio",true);
INSERT INTO tb_infoestudantes(nome_aluno,idade,nota,ano,presente)VALUES("Sofia Cavalcante",8,"10","Terceiro ano do ensino fundamental",true);
INSERT INTO tb_infoestudantes(nome_aluno,idade,nota,ano,presente)VALUES("Maria Clara",9,"10","Quarto ano do ensino fundamental",true);
INSERT INTO tb_infoestudantes(nome_aluno,idade,nota,ano,presente)VALUES("Miguel Souza",10,"7","Terceiro ano do ensino fundamental",true);
INSERT INTO tb_infoestudantes(nome_aluno,idade,nota,ano,presente)VALUES("Milena Silva",15,"9","Primeiro ano do ensino médio",false);

SELECT * FROM tb_infoestudantes WHERE nota > 7;
SELECT * FROM tb_infoestudantes WHERE nota < 7;

UPDATE tb_infoestudantes SET presente = true WHERE id = 6;

SELECT * FROM tb_infoestudantes;

DROP TABLE tb_infoestudantes;
















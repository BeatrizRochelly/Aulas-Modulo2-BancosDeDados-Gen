-- QUESTAO 4 - Açougue

CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categorias VARCHAR(255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
valor DECIMAL (12,2),
validade DATE,
peso VARCHAR(255),
categorias_id BIGINT,

FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);
DROP TABLE tb_produtos;
SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(categorias)VALUES("Bovinos"),("Frango"),("Suínos"),("Pescados"),("Processados");

INSERT INTO tb_produtos (nome_produto,valor,validade,peso,categorias_id)VALUES
("Largato",58.60,"2022-08-23","1kg",1);
INSERT INTO tb_produtos (nome_produto,valor,validade,peso,categorias_id)VALUES
("Frango",40.50,"20220803","4kg",2);
INSERT INTO tb_produtos (nome_produto,valor,validade,peso,categorias_id)VALUES
("Coxa de frango",25.88,"20221208","1kg",2),
("Asa",145,"2022-12-29","15kg",2),
("Carne",35.90,"2023-01-15","4kg",1),
("Pernil",80.99,"2023-02-22","3kg",3),
("Atum",90.35,"2022-08-12","2kg",4),
("Hamburguer",30,"2023-10-25","1kg",5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor >50;
SELECT * FROM tb_produtos WHERE valor >50 AND valor <150;
SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id;
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_categorias.id = 2;






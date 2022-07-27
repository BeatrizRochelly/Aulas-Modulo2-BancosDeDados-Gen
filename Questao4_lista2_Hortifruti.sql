-- QUESTAO 4 - Hortifruti

CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categorias VARCHAR (255)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
cor VARCHAR(255),
peso_aprox VARCHAR(255),
valor DECIMAL (10,2),
quantidade INT,
categorias_id BIGINT,

FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(categorias)VALUES("Frutas"),("Verduras"),("Legumes"),("Orgânicos"),("Congelados");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome_produto,cor,peso_aprox,valor,quantidade,categorias_id)VALUES
("Banana prata","Amarelo","200g",1.60,1,1),
("Laranja lima","Laranja","220g",1.32,1,1),
("Laranja pêra","Laranja","6kg",89.90,30,4),
("Alface","Verde","300g",12.90,3,2),
("Couve","Verde","150g",25.45,1,2),
("Cenoura","Laranja","10kg",125,35,3),
("Batata doce","Roxo","15kg",168.99,40,4),
("Almôndegas","Marrom","5kg",99.90,35,5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor > 50.00 AND valor <150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categorias_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id WHERE tb_categorias.id = 1;




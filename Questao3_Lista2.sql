-- QUESTAO 3 

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
   id BIGINT AUTO_INCREMENT PRIMARY KEY,
   categoria VARCHAR (255)
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(255),
	valor DECIMAL(12,2),
    marca VARCHAR(255),
    quantidade VARCHAR (255),
    categoria_id BIGINT,

FOREIGN KEY (categoria_id)REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(categoria)VALUES("Medicamentos"),("Vida saudável"),("Mamãe e bebê"),("Beleza"),("Higiene pessoal");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome_produto,valor,marca,quantidade,categoria_id)VALUES
("Paracetamol",37.89,"Eurofarma","36 Comprimidos",1),
("Dipirona",5.50,"Prati Donaduzzi","10 Comprimidos",1),
("Vitamina C",7.49,"Raia","10 Comprimidos Efervescentes",2),
("Suplemento vitamínico",98.56,"Medley","100 Cápsulas",2),
("Fralda",78.90,"Pampers","80 Unidades",3),
("Loção Hidratante",25.59,"CeraVe","473ml",4),
("Sérum hidratante facial",120.99,"Vichy","30ml",4),
("Sabonete",3.25,"Dove","90g",5),
("Desodorante",12.50,"Rexona","150ml",5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor >5.00 AND valor <60.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 1;







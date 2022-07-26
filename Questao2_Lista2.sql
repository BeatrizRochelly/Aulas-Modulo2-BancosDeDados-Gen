-- QUESTAO 2 

-- O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal.
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionada

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255)
);

-- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
-- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255),
tamanho VARCHAR (255),
tipo_de_massa VARCHAR (255),
valor DECIMAL (10,2),
categoria_id BIGINT,

FOREIGN KEY (categoria_id)REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias(categoria)VALUES("Tradicionais");
INSERT INTO tb_categorias(categoria)VALUES("Premium");
INSERT INTO tb_categorias(categoria)VALUES("Doces");
INSERT INTO tb_categorias(categoria)VALUES("Vegana");
INSERT INTO tb_categorias(categoria)VALUES("Brotinho");

-- Exclui a tabela para mudar um atributo. 
DROP TABLE tb_pizzas;

-- Realizei essa etapa porque estava repitido as categorias
DELETE FROM tb_categorias WHERE id = 6;
DELETE FROM tb_categorias WHERE id = 7;
DELETE FROM tb_categorias WHERE id = 8;
DELETE FROM tb_categorias WHERE id = 9;
DELETE FROM tb_categorias WHERE id = 10;
SELECT * FROM tb_pizzas;

-- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Mussarela","GG","Grossa",58.90,1);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Calabresa","G","Média",50,1);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Costela ao barbecue","M","Fina",79.90,2);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Brigadeiro","P","Fina",60.90,3);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Palmito","G","Grossa",80.90,4);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Presunto","PP","Fina",18.90,5);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Frango","P","Média",39.90,1);
INSERT INTO tb_pizzas(sabor,tamanho,tipo_de_massa,valor,categoria_id)VALUES("Camarão com catupiry","GG","Grossa",110.25,2);



-- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE valor >50.00 AND valor <=100;
-- SELECT nome_projeto,valor_projeto FROM projetos WHERE valor_projeto > 2000000 AND valor_projeto < 2500000;

-- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.id = 3;

-- Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
























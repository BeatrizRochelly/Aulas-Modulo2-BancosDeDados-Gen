CREATE DATABASE db_labrabaatelie;

USE db_labrabaatelie;

-- Criando a primeira tabela.
CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(255)
);

-- Criando a segunda tabela.
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(255),
quantidade INT,
cor VARCHAR(255),
valor DECIMAL(8,2), -- O valor total que vamos aceita é 8, o ponto(.) entra como caracter nesse valor total.
tamanho CHAR,
categoria_id BIGINT, -- Serve para puxar de algo existente uma informação, tem que ser o BIGINT.

FOREIGN KEY (categoria_id)REFERENCES tb_categorias(id)  -- Estou fazendo a chave estrageira, pegando categoria(variavel) da minha tb_categorias e juntando com essa.
);

SELECT * FROM tb_categorias;

-- Agora vou inserir algo na minha categoria
INSERT INTO tb_categorias(categoria)VALUES("Produtos de Beleza");
INSERT INTO tb_categorias(categoria)VALUES("Velas Artesanais");
INSERT INTO tb_categorias(categoria)VALUES("Coxinha");

-- Outra solucão para utiliza o INSERT INTO 
-- INSERT INTO tb_categorias(categoria)VALUES("Produtos de Beleza"),("Velas Artesanais"),("Coxinhas");

SELECT * FROM tb_produtos;

-- Agora estou inserindo informações na minha tabela de produtos, como nome_produto, quantidade, etc.
INSERT INTO tb_produtos(nome_produto,quantidade,cor,valor,tamanho,categoria_id)VALUES("Coxinha de Jaca",10,"Dourada",15,"G",3);
INSERT INTO tb_produtos(nome_produto,quantidade,cor,valor,tamanho,categoria_id)VALUES("Touca de cetim",8,"Azul",10,"M",1);
INSERT INTO tb_produtos(nome_produto,quantidade,cor,valor,tamanho,categoria_id)VALUES("Vela",15,"Rosa",30,"P",2);

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.id = 2;


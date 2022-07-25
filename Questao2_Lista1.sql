-- QUESTÃO 2


-- comentario de linha
/*
comentario de bloco
*/

-- comando de criação de banco de dados
CREATE DATABASE db_lojinha;

-- comando para usar as informações da minha tabela que ainda vou criar para o meu banco de dados
USE db_lojinha;

-- Agora estou criando uma tabela onde vou adicionar as informações (caracteristica) do meu produto (objeto)
CREATE TABLE tb_produtos(

-- atributo auto_increment só pode ser usado uma vez na tabela, no caso na chave primaria
id BIGINT AUTO_INCREMENT, -- PRIMARY KEY (poderia fazer desse jeito também
nome_produto VARCHAR(255), -- coloque a quantidade de caracteres que pode ser aceita, adicionei a , porque não acaba o comando ainda.
valor DECIMAL (10,2), -- o decimal define a quantidade de numeros totais do campo, e quantos numeros você vai aceitar.
quantidade INT,
pagamento_cartao BOOLEAN,

PRIMARY KEY(id) -- outra forma de indicar a primary key 
);

-- comando que seleciona todos os campos e dados da tabela de produtos 
SELECT * FROM tb_produtos;

-- insica dentro da tabela de produtos, nos campos de nome_produtos, valor,quantidade e pagamento_cartao, os seguintes valores...
INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Calça",25.59,5,true);

INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Vestido",23.59,8,true);

INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Blusa",510,10,true);

INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Short",100.59,5,true);

INSERT INTO tb_produtos(nome_produto,valor,quantidade,pagamento_cartao)VALUES("Calça Jeans",58.90,5,false);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET pagamento_cartao = true WHERE id = 5;

SELECT * FROM tb_produtos;

DROP TABLE tb_produtos;









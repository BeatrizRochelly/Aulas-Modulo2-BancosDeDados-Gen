-- QUESTAO 1

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255)
    );


CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_personagem VARCHAR(255),
    nivel INT,
    especie VARCHAR(255),
	armadura BOOLEAN,
    ataque BIGINT,
    defesa BIGINT,
    classe_id BIGINT,
    
    FOREIGN KEY (classe_id)REFERENCES tb_classes(id)
);


INSERT INTO tb_classes(classe)VALUES("Herói"),("Vilão"),("Fada"),("Guerreiro"),("Arqueiro");
SELECT* FROM tb_classes;

INSERT INTO tb_personagens(nome_personagem,nivel,especie,armadura,ataque,defesa,classe_id)VALUES
("Homem de ferro",100,"Humana",true,1000,2000,1),
("Coringa",10,"Humana",false,500,200,2),
("Mulher-Maravilha",1000,"Humana",true,5000,8000,1),
("Super-Homem",500,"Humana",true,4000,6000,1),
("Homem-Aranha",200,"Humana",false,1000,2000,1),
("Alerquina",150,"Humana",false,800,3000,2),
("Nemo",900,"Animal",false,300,1000,1),
("Oscar",500,"Animal",false,899,500,1),
("Barbie",500,"Humana",false,1000,1500,1),
("Sininho",500,"Humana",false,1200,1500,3),
("Arqueiro",500,"Humana",false,5000,1800,5),
("Hércules",500,"Humana",true,1000,1430,4);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa >1000 AND defesa <2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 1;







    
    

